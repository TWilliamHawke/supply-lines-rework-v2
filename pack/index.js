const fs = require("fs");
const path = require("path");

const sourcePath = "c:/Program Files (x86)/Steam/steamapps/common/Total War WARHAMMER II/data/supply_lines_rework_w3.pack";
const targetPath = path.join(process.cwd(), "pack", "supply_lines_rework_w3.pack");

const copyPackFile = () => {
  await fs.copyFileSync(sourcePath, targetPath);
}

copyPackFile();