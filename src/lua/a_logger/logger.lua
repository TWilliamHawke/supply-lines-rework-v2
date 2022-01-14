function Supply_lines_rework:logCore(text)
  local logText = tostring(text);
  local popLog = io.open("supply_rework_log.txt","a");
  popLog :write("SRW: "..logText .. "  \n");
  popLog :flush();
  popLog :close();
end

function Supply_lines_rework:log(text)
  if self.log_level < 1 then return end;
  self:logCore(text);
end

function Supply_lines_rework:logAI(text)
  if self.log_level < 2 then return end;
  self:logCore(text);
end

function Supply_lines_rework:logDebug(text)
  if self.log_level < 3 then return end;
  self:logCore(text);
end

function Supply_lines_rework:create_new_log()
  local logTimeStamp = os.date("%d, %m %Y %X");

  local popLog = io.open("supply_rework_log.txt","w+");
  popLog :write("NEW LOG ["..logTimeStamp.."] \n");
  popLog :flush();
  popLog :close();
end

