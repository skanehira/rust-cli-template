file::rename("Cargo.toml.template", "Cargo.toml");

if variable::prompt("Use Curosr's rules", false) {
	system::command("./init.sh", []);
}
