function data = getTestData()
%% Return the test data in a struct for running the services.

    %% Read the JSON sidecar into a string for all examples
    data = struct('descPrefix', '', 'eventsText', '', ...
                  'jsonBadText', '', 'jsonText', '', 'labelPrefix', '', ...
                  'schemaUrl', '', 'schemaText', '', ...
                  'spreadsheetText', '', 'spreadsheetTextInvalid', '');
       
    remodelPath = '../../../datasets/eeg_ds003654s_hed_remodel/';
    libraryPath = '../../../datasets/eeg_ds003654s_hed_library/';
    data.jsonLibrary = fileread(...
        [libraryPath 'task-FacePerception_events.json']);
    data.jsonText = fileread(...
        [remodelPath 'task-FacePerception_events.json']);
    data.eventsText =  fileread([remodelPath ...
       'sub-002/eeg/sub-002_task-FacePerception_run-1_events.tsv']);
    data.remodel1Text = fileread(...
        [remodelPath 'derivatives/remodel/remodeling_files/remove_extra_rmdl.json']);
    data.remodel2Text = fileread(...
        [remodelPath 'derivatives/remodel/remodeling_files/' ...
        'summarize_columns_rmdl.json']);
    data.remodel3Text = fileread(...
        [remodelPath 'derivatives/remodel/remodeling_files/' ...
        'summarize_hed_types_rmdl.json']);
    data.jsonBadText = ...
        fileread('../../data/bids_data/both_types_events_errors.json');
    data.labelPrefix = 'Property/Informational-property/Label/';
    data.descPrefix = 'Property/Informational-property/Description/';
    data.schemaText = fileread('../../data/schema_data/HED8.0.0.xml');
    data.schemaUrl = ['https://raw.githubusercontent.com/hed-standard/' ...
                      'hed-specification/master/hedxml/HED8.0.0.xml'];
    data.spreadsheetText = ...
        fileread('../../data/spreadsheet_data/LKTEventCodesHED3.tsv');
    data.spreadsheetTextExtracted = ...
        fileread('../../data/bids_data/task-FacePerception_events_extracted.tsv');
    data.spreadsheetTextInvalid = ...
        fileread('../../data/spreadsheet_data/LKTEventCodesHED2.tsv');
    data.goodStrings = {'Red,Blue', 'Green', 'White, (Black, Image)'}; 
    data.badStrings = {'Red, Blue, Blech', 'Green', 'White, Black, Binge'}; 
    data.jsonUpperText = ...
        fileread('../../../datasets/eeg_ds003654s_hed_inheritance/task-FacePerception_events.json');
    data.jsonLower2Text = ...
        fileread('../../../datasets/eeg_ds003654s_hed_inheritance/sub-002/sub-002_task-FacePerception_events.json');
end