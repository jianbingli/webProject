package domain;
public class filesPro {
			int FileID;
			String FileName;
			String FileType;
			int FileSize;
			String FileInfro;
			String FileCreaDat;
			int FileDownTimes;
			public int getFileID() {
				return FileID;
			}
			public void setFileID(int fileID) {
				FileID = fileID;
			}
			public String getFileName() {
				return FileName;
			}
			public void setFileName(String fileName) {
				FileName = fileName;
			}
			public String getFileType() {
				return FileType;
			}
			public void setFileType(String fileType) {
				FileType = fileType;
			}
			
			public int getFileSize() {
				return FileSize;
			}
			public void setFileSize(int fileSize) {
				FileSize = fileSize;
			}
			public String getFileInfro() {
				return FileInfro;
			}
			public void setFileInfro(String fileInfro) {
				FileInfro = fileInfro;
			}
			public String getFileCreaDat() {
				return FileCreaDat;
			}
			public void setFileCreaDat(String fileCreaDat) {
				FileCreaDat = fileCreaDat;
			}
			public int getFileDownTimes() {
				return FileDownTimes;
			}
			public void setFileDownTimes(int fileDownTimes) {
				FileDownTimes = fileDownTimes;
			}
			@Override
			public String toString() {
				return "filesPro [FileID=" + FileID + ", FileName=" + FileName
						+ ", FileType=" + FileType + ", FileSize=" + FileSize
						+ ", FileInfro=" + FileInfro + ", FileCreaDat="
						+ FileCreaDat + ", FileDownTimes=" + FileDownTimes
						+ "]";
			}
			
	
	
}
