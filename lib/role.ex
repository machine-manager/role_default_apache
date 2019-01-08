defmodule RoleDefaultApache do
	def role(_tags \\ []) do
		%{
			desired_packages: ["apache2"],
			ferm_input_chain:
				"""
				# apache2
				proto tcp syn dport 80 ACCEPT;
				""",
		}
	end
end
