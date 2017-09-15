#import sublime
import sublime_plugin
import os
import sys

class AptiovBuildCommand(sublime_plugin.WindowCommand):
	def run(self):
		#self.output_view = self.window.create_output_panel('exec')
		#self.window.run_command("show_panel", {"panel": "output.exec"})
		self.veblist = list()
		for file in os.listdir(self.window.extract_variables()['folder']):
			#print(file)
			if os.path.isfile(os.path.join(self.window.extract_variables()['folder'],file)):
				name = file.split('.')
				print (len (name))
				if (len(name) == 2) and name[1].upper() == "VEB":
					self.veblist.append(file)
		print (self.veblist)
		self.window.show_quick_panel(self.veblist, self.StartBuild)

	def StartBuild(self, select):
		print (select)
		if select != -1:
			VEB = self.veblist[select]
			VEB = VEB.split('.')[0]
			sys.path.append(VEB)
		print (sys.path)