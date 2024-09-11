python3 << EndPython3
import shutil
import subprocess

# The idea of this code comes from Black's VIM plugin,
# I just replaced "black" with "ruff". Preserving the
# cursors is not my idea though.
def Ruff():
    bin_path = shutil.which("ruff")
    if bin_path is None:
        print("ruff was not found in your PATH")
        return

    current_buffer = vim.current.window.buffer
    cursors = []
    for i, tabpage in enumerate(vim.tabpages):
        if tabpage.valid:
            for j, window in enumerate(tabpage.windows):
                if window.valid and window.buffer == current_buffer:
                    cursors.append((i, j, window.cursor))

    buffer_str = '\n'.join(vim.current.buffer) + '\n'
    buffer_s = buffer_str.encode("UTF-8")

    cmd = subprocess.Popen(
        [bin_path, "format", "-"],
        stdin=subprocess.PIPE,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
    )

    outs, errs = cmd.communicate(input=buffer_s)

    if cmd.returncode != 0:
        err = errs.decode("UTF-8", errors="ignore")
        print("ruff error:", err)
        return

    out = outs.decode("UTF-8", errors="ignore")

    vim.current.buffer[:] = out.split('\n')[:-1]

    for i, j, cursor in cursors:
        window = vim.tabpages[i].windows[j]
        try:
            window.cursor = cursor
        except vim.error:
            window.cursor = (len(window.buffer), 0)

    print("ruff formatted your code")
EndPython3

function ruff#Ruff()
    :py3 Ruff()
endfunction
