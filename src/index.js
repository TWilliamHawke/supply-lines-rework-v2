const mainFs = require('fs');
const dir = __dirname;


const walkSync = function(dir, filelist) {
  const files = mainFs.readdirSync(dir);
  filelist = filelist || [];
  
  files.forEach(file => {
    if (mainFs.statSync(dir + file).isDirectory()) {
      filelist = walkSync(dir + file + '/', filelist);
    } else {
      filelist.push(dir + file);
    }
  });
  return filelist;
};

const write = () => {
  const namespaceFolder = dir + '/lua/';
  const files = walkSync(namespaceFolder);
  let data = ''
  for(file of files) {
    const fileBody = mainFs.readFileSync(file, { encoding: 'utf8' });
    data = data.concat("\n\n" + fileBody);
  }
  mainFs.writeFileSync(dir + '/bundle.lua', data);
}

write()