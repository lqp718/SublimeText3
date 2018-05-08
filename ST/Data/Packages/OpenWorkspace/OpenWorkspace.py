import sublime
import sublime_plugin
import subprocess


class OpenWorkspaceCommand(sublime_plugin.TextCommand):
	def run(self, edit, file_path = False):
		windows = sublime.active_window()
		if file_path == False:
			subprocess.Popen(["explorer", windows.extract_variables()['folder']])
		else:
			subprocess.Popen(["explorer", '/select,', windows.extract_variables()['file']])
