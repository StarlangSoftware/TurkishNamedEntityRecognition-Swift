For Developers
============
You can also see [Java](https://github.com/starlangsoftware/TurkishNamedEntityRecognition), [Python](https://github.com/starlangsoftware/TurkishNamedEntityRecognition-Py), [Cython](https://github.com/starlangsoftware/TurkishNamedEntityRecognition-Cy), [C#](https://github.com/starlangsoftware/TurkishNamedEntityRecognition-CS), or [C++](https://github.com/starlangsoftware/TurkishNamedEntityRecognition-CPP) repository.

## Requirements

* Xcode Editor
* [Git](#git)

### Git

Install the [latest version of Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git).

## Download Code

In order to work on code, create a fork from GitHub page. 
Use Git for cloning the code to your local or below line for Ubuntu:

	git clone <your-fork-git-link>

A directory called TurkishNamedEntityRecognition-Swift will be created. Or you can use below link for exploring the code:

	git clone https://github.com/starlangsoftware/TurkishNamedEntityRecognition-Swift.git

## Open project with XCode

To import projects from Git with version control:

* XCode IDE, select Clone an Existing Project.

* In the Import window, paste github URL.

* Click Clone.

Result: The imported project is listed in the Project Explorer view and files are loaded.


## Compile

**From IDE**

After being done with the downloading and opening project, select **Build** option from **Product** menu. After compilation process, user can run TurkishNamedEntityRecognition-Swift.

Detailed Description
============
+ [Gazetteer](#gazetteer)

## Gazetteer

Bir Gazetter yüklemek için

	init(name: String, fileName: String)

Hazır Gazetteerleri kullanmak için

	AutoNER()

Bir Gazetteer'de bir kelime var mı diye kontrol etmek için

	func contains(word: String) -> Bool

## Cite
If you use this resource on your research, please cite the following paper: 

```
@inproceedings{ertopcu17,  
author={B. {Ertopçu} and A. B. {Kanburoğlu} and O. {Topsakal} and O. {Açıkgöz} and A. T. {Gürkan} and B. {Özenç} and İ. {Çam} and B. {Avar} and G. {Ercan} and O. T. {Yıldız}},  
booktitle={2017 International Conference on Computer Science and Engineering (UBMK)},  title={A new approach for named entity recognition},   
year={2017},  
pages={474-479}
}
