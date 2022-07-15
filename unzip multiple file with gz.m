clc; clear
subjects= [031 036 042 044 050 056 059 070]
session= [052 029 059 034 037 041 047 065]
run=[01 02 03 04 05]
for subject(i)=subjects
    subject = num2str(subject, '%03d');
    for session=session
        session(k)=num2str(session, '%03d');
        for run =run
            run(ik)=num2str(run, '%01d');
            if exist(['/home/work/nifti/sub-' subject '_ses-' session '_SOC']) == 1
                display('folder exsited')
                % unzip func
                gunzip(['/home/work/nifti/sub-' subject '_ses-' session '_SOC' '/func/' 'sub-' subject '_task-soc_run-' run '_bold.nii.gz'])
                %unzip anat
                gunzip(['/home/work/nifti/sub-' subject '_ses-' session '_SOC' '/anat/' 'sub-' subject '_T1w.nii.gz'])
            else
                display('folder not existed')
            end
        end
    end
end 

clc; clear
subjects= [036]
session= [029]
run=[01 02 03 04 05]
for subject=subjects
    subject = num2str(subject, '%03d');
    for session=session
        session=num2str(session, '%03d');
        for run =run
            run=num2str(run, '%02d');
% unzip func
gunzip(['/home/work/nifti/sub-' subject '_ses-' session '_SOC' '/func/' 'sub-' subject '_task-soc_run-' run '_bold.nii.gz'])
%unzip anat
gunzip(['/home/work/nifti/sub-' subject '_ses-' session '_SOC' '/anat/' 'sub-' subject '_T1w.nii.gz'])
        end 
    end
end
