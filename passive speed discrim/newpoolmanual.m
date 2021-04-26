function datastruct = newpoolmanual()
[filenames] = uigetfile('multiselect','on')
load(filenames{1});
all_data = data;
fields = fieldnames(data);
for fileInd = 2:length(filenames)
    load(filenames{fileInd});
    for j = 1:size(fields, 1)
        all_data = setfield(all_data, fields{j,1}, [getfield(all_data, fields{j,1}); getfield(data, fields{j,1})]);
    end
end