<h2><code>RC.EXE</code> With <em>Windows-SDK v7.1 <code>\Include</code> Folder</em>.</h2>

<pre>
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░ Microsoft Resource-Compiler Wrap.                      ░
░ - - - - - - - - - - - - - - - - - - - - - - - - - - -  ░
░  ∙ Latest Windows-SDK "Include\" folder (Auto Load!).  ░
░  ∙ Latest RC.EXE (v6.1.7600.16385).                    ░
░  ∙ 32/64bit RC.EXE (Auto switch).                      ░
░  ∙ Compatible with all your old RC.EXE scripts.        ░
░  ∙ May include extra h-files under "Include\" folder.  ░
░  ∙ Drag&amp;Drop ANY amount of rc files!.                  ░
░  ∙ Unicode Support.                                    ░
░  ∙ Portable.                                           ░
░ - - - - - - - - - - - - - - - - - - - - - - - - - - -  ░
░                           Elad Karako. September 2017. ░
░        https://github.com/eladkarako/rc-with-includes/ ░
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
</pre>

<hr/>

<br/>

<pre>
Using RC (The RC Command Line)

To start RC, use the following command.

RC [options] script-file

The script-file parameter specifies the name of the resource-definition file that contains the names, types, filenames, and descriptions of the resources to be compiled.

RC can generate separate resource files for applications that have both language-neutral and language-specific resources. Developers can use a resource configuration file or set command-line options to select which resource types and items are non-localizable resources of the language-neutral (LN) file and which are localizable resources of language-specific MUI files. For more information, see the Multilingual User Interface.
The options parameter can be one or more of the following command-line options.


Options

/?
  Displays a list of command-line options.
/c
  Defines a code page used by NLS conversion.
/d
  Defines a symbol for the preprocessor that you can test with the #ifdef directive.

/fm mresname
  RC creates one language-neutral .RES file and one language-dependent (MUI) .RES file using script-file. This option must be used together with the /fo resname option. RC names the language-neutral .RES file resname.res and names the language-dependent (MUI) .RES file mresname.res.

  Windows Server 2003 and Windows XP/2000:  This option is not available without also using the LoadMUILibrary and FreeMUILibrary functions on an updated system.

/fo resname
  RC creates a .RES file named resname using script-file.

  If the /fm mresname option is also set, RC creates one language-neutral .RES file and one language-dependent (MUI) .RES file.
  Windows Server 2003 and Windows XP/2000:  This option is not available without also using the LoadMUILibrary and FreeMUILibrary functions on an updated system.

/g1
  If /g1, is set, RC generates a MUI file if the only localizable resource being included in the MUI file is a version resource. If /g1 is not set, RC will not generate a MUI file if the only localizable resource being included in the MUI file is a version resource.

/h
  Displays the list of command-line options.

/I
  Searches the specified directory before searching the directories specified by the INCLUDE environment variable.

/j loctype
  Localizable resource types RC places into the language-dependent (MUI) .RES file. If the /q option is also set, this option is ignored, and the information in the RC Configuration file takes precedence.
  Windows Server 2003 and Windows XP/2000:  This option is not available without also using the LoadMUILibrary and FreeMUILibrary functions on an updated system.

/k overtype
  Overlapping resource types that RC places into both the language-neutral .RES and the language-dependent (MUI).RES files. The resource types that are specified by the /k option must be a subset of those that are specified by the /j option. For example, ?J2 ?J3 ?K3 specifies that RC places resource type 3 in both the language-neutral and language-dependent (MUI) files. If the /q option is also set, this option is ignored, and the information in the RC Configuration file takes precedence.
  Windows Server 2003 and Windows XP/2000:  This option is not available without also using the LoadMUILibrary and FreeMUILibrary functions on an updated system.

/l langid
  Specifies the default language for compilation. For example, -l409 is equivalent to including the following statement at the top of the resource script file: LANGUAGE LANG_ENGLISH,SUBLANG_ENGLISH_US
  For more information, see Language Identifiers.

/n
  Null terminates all strings in the string table.

/q Mui.RCConfig
  An RC configuration file that follows the RC Configuration File format. The RC Configuration File format enables components to self-describe resource information such as resource versioning, MUI file path, resource types and items. This file specifies which resources go into the language-neutral .RES file and which resources go into the language-dependent (MUI) .RES file. This option, and the information provided in the RC Configuration file, override the command line options /j and /k.
  Windows Server 2003 and Windows XP/2000:  This option is not available without also using the LoadMUILibrary and FreeMUILibrary functions on an updated system.

/r
  Ignored. Provided for compatibility with existing makefiles.

/u
  Undefines a symbol for the preprocessor.

/v
  Displays messages that report on the progress of the compiler.

/x
  Prevents RC from checking the INCLUDE environment variable when searching for header files or resource files.


Remarks

Options are not case sensitive, and a hyphen (-) can be used in place of a slash mark (/). You can combine single-letter options if they do not require any additional parameters.
RC will not generate a MUI file in the following cases.
No localizable resources exist in the .rc file.
The only resource language id specified in the .rc file is neutral (0x0).
The .rc file has resources that are specified in more than one language. The exception is if the .rc file contains two languages, and one language is neutral (0x0), RC generates a MUI file.
</pre>

<hr/>

<pre>
RC Diagnostic Messages

This section describes of diagnostic messages produced by RC. Many of these messages appear when RC is not able to compile resources properly. The descriptions clarify the cause of each message.
A capital V in parentheses (V) at the beginning of a message description indicates that the message is displayed only if RC is run with the /v (verbose) option. These messages are generally informative and do not necessarily indicate errors.

The messages are listed in alphabetic order.


Accelerator Type required (ASCII or VIRTKEY)
  The type parameter in the ACCELERATORS statement must contain one of the following values: ASCII or VIRTKEY.

BEGIN expected in Accelerator Table
  An ACCELERATORS statement was not followed by the BEGIN keyword.

BEGIN expected in Dialog
  A DIALOG statement was not followed by the BEGIN keyword.

BEGIN expected in menu
  A MENU statement was not followed by the BEGIN keyword.

BEGIN expected in RCData
  An RCDATA statement was not followed by the BEGIN keyword.

BEGIN expected in String Table
  A STRINGTABLE statement was not followed by the BEGIN keyword.

BEGIN expected in VERSIONINFO resource
  A VERSIONINFO statement was not followed by the BEGIN keyword.

Cannot Re-use String Constants
  You are using the same value twice in a STRINGTABLE statement. Make sure that you have not mixed overlapping decimal and hexadecimal values.

Control Character out of range [A?Z]
  A control character in the ACCELERATORS statement is invalid. The character following the caret (^) must be in the range A through Z.

Could not openin-file-name
  Microsoft Windows Resource Compiler (RC) could not open the specified file. Make sure that the file exists and that you typed the filename correctly.

Couldn't openresource-name
  Microsoft Windows Resource Compiler (RC) could not open the specified file. Make sure that the file exists and that you typed the filename correctly.

Creatingresource-name
  (V) Microsoft Windows Resource Compiler (RC) is creating a new binary resource (.res) file.

Empty menus not allowed
  An END keyword appears before any menu items are defined in the MENU statement. Empty menus are not permitted by Microsoft Windows 32 Resource Compiler (RC). Make sure that you do not have any opening quotation marks within the MENU statement.

END expected in Dialog
  The END keyword must appear at the end of a DIALOG statement. Make sure that there are no opening quotation marks left from the preceding statement.

END expected in menu
  The END keyword must appear at the end of a MENU statement. Make sure that there are no mismatched BEGIN and END statements.

Error Creatingresource-name
  Microsoft Windows 32 Resource Compiler (RC) could not create the specified binary resource (.RES) file. Make sure that it is not being created on a read-only drive. Use the /v option to find out whether the file is being created.

Expected Comma in Accelerator Table
  Microsoft Windows 32 Resource Compiler (RC) requires a comma between the event and idvalue parameters in the ACCELERATORS statement.

Expected control class name
  The class parameter of a CONTROL statement in the DIALOG statement must be one of the following control types: BUTTON, COMBOBOX, EDIT, LISTBOX, SCROLLBAR, STATIC, or user-defined. Make sure that the class is spelled correctly.

Expected font face name
  The typeface parameter of the FONT statement in the DIALOG statement must be a character string enclosed in double quotation marks ("). This parameter specifies the name of a font.

Expected ID value for Menuitem
  The MENU statement must contain a MENUITEM statement, which has either an integer or a symbolic constant in the MenuID parameter.

Expected Menu String
  Each MENUITEM and POPUP statement must contain a text parameter. This parameter is a string enclosed in double quotation marks (") that specifies the name of the menu item or pop-up menu. A MENUITEM SEPARATOR statement requires no quoted string.

Expected numeric command value
  Microsoft Windows Resource Compiler (RC) was expecting a numeric idvalue parameter in the ACCELERATORS statement. Make sure that you have used a #define statement to specify the value and that the constant used is spelled correctly.

Expected numeric constant in string table
  A numeric constant, defined in a #define statement, must immediately follow the BEGIN keyword in a STRINGTABLE statement.

Expected numeric point size
  The pointsize parameter of the FONT statement in the DIALOG statement must be an integer point-size value.

Expected Numerical Dialog constant
  A DIALOG statement requires integer values for the x, y, width, and height parameters. Make sure that these values, which are included after the DIALOG keyword, are not negative.

Expected String in STRINGTABLE
  A string is expected after each numeric stringid parameter in a STRINGTABLE statement.

Expected String or Constant Accelerator command
  Microsoft Windows Resource Compiler (RC) was not able to determine which key was being set up for the accelerator. The event parameter in the ACCELERATORS statement might be invalid.

Expected VALUE, BLOCK, or END keyword.
  The VERSIONINFO structure requires a VALUE, BLOCK, or END keyword.

Expecting number for ID
  A number is expected for the id parameter of a CONTROL statement in the DIALOG statement. Make sure that you have a number or a #define statement for the control identifier.

Expecting quoted string for key
  The key string following the BLOCK or VALUE keyword should be enclosed in double quotation marks.

Expecting quoted string in dialog class
  The class parameter of the CLASS statement in the DIALOG statement must be an integer or a string enclosed in double quotation marks (").

Expecting quoted string in dialog title
  The captiontext parameter of the CAPTION statement in the DIALOG statement must be a character string, enclosed in double quotation marks (").

File not found:filename
  The file specified in the RC command was not found. Make sure that the file has not been moved to another directory and that the filename or path is typed correctly.

Font names must be ordinals
  The pointsize parameter in the FONT statement must be an integer, not a string.

Invalid Accelerator
  An event parameter in the ACCELERATORS statement was not recognized or was more than two characters long.

Invalid Accelerator Type (ASCII or VIRTKEY)
  The type parameter in the ACCELERATORS statement must contain either the ASCII or VIRTKEY value.

Invalid control character
  A control character in the ACCELERATORS statement is invalid. A valid control character consists of a caret (^) followed by a single letter.

Invalid Control type
  The control statement in a DIALOG statement must be one of the following: AUTO3STATE, AUTOCHECKBOX, AUTORADIOBUTTON, CHECKBOX, COMBOBOX, CONTROL, CTEXT, DEFPUSHBUTTON, EDITTEXT, GROUPBOX, ICON, LISTBOX, LTEXT, PUSHBOX, PUSHBUTTON, RADIOBUTTON, RTEXT, SCROLLBAR, STATE3.

Invalid directive in preprocessed RC file
  The specified filename has an embedded newline character.

Invalid .EXE file
  The executable (.exe) file is invalid. Make sure that the linker created it correctly and that the file exists.

Invalid switch,option
  An option used was invalid. For a list of the command-line options, use the rc /? command.

Invalid switch, too many -D switches
  Too many -d options were specified. To define a large number of symbols, use the #include directive to include a file of definitions.

Invalid type
  The resource type was not among the types defined in the include file.

Invalid usage. Use RC -? for Help
  Make sure that you have at least one filename to work with. For a list of the command-line options, use the rc -? command.

I/O error reading file
  Read failed. Since this is a generic routine, no specific filename is supplied.

I/O error seeking in file
  Seeking in file failed. Since this is a generic routine, no specific filename is supplied.

I/O error writing file
  Write failed. Since this is a generic routine, no specific filename is supplied.

No resource binary filename specified.
  The /fo option was used, but no binary resource (.res) file was specified.

Old DIB inresource-name. Pass it through IMAGEDIT.
  The resource file specified is not compatible.

Out of heap memory
  There was not enough memory.

Out of memory, needednbytes
  Microsoft Windows Resource Compiler (RC) was not able to allocate the specified amount of memory.

Redefinition of Button Type
  The specified button styles conflict with or modify the style specified by the control keyword. This is a warning only and may be ignored.

Text string or ordinal expected in Control
  The text parameter of a CONTROL statement in the DIALOG statement must be either a text string or an ordinal reference to the type of control that is expected. If using an ordinal, make sure that you have a #define statement for the control.

Unable to createdestination
  Microsoft Windows Resource Compiler (RC) was not able to create the destination file. Make sure that there is enough disk space.

Unbalanced Parentheses
  Make sure that you have closed every opening parenthesis in the DIALOG statement.

Unexpected value in RCData
  The values for the raw-data parameter in the RCDATA statement must be integers or strings, separated by commas. Make sure that you did not leave out a comma or a quotation mark around a string.

Unexpected value in value data
  A statement contained information with a format or size different from the expected value for that parameter.

Unknown DIB header format
  The device-independent bitmap (DIB) header is not a BITMAPCOREHEADER or BITMAPINFOHEADER structure.

Unknown Menu SubType
  The item-definitions parameter of the MENU statement can contain only MENUITEM and POPUP statements.

Unrecognized VERSIONINFO field; BEGIN or comma expected
  The format of the information following a VERSIONINFO statement is incorrect.

Version WORDs separated by commas expected
  Values in an information block for a VERSIONINFO statement should be separated by commas.

Warning: ASCII character not equivalent to virtual key code
  An invalid virtual-key code exists in the ACCELERATORS statement. The ASCII values for some characters such as *, ^, or & are not equivalent to the virtual-key codes for the corresponding keys. In the case of the asterisk (*), the virtual-key code is equivalent to the ASCII value for 8, the numeric character on the same key.

Warning: SHIFT or CONTROL used without VIRTKEY
  The ALT, SHIFT, and CONTROL options apply only to virtual keys in the ACCELERATORS statement. Make sure that the VIRTKEY option is used with one of these other options.

Writing resourcetypeimagelang:languagesize:size
  (V) Microsoft Windows Resource Compiler (RC) is writing the specified resource. The type is the resource type. It may be a number or a string. The image can be a number or a string. The language is the national language of the resource. The size is the decimal size of the resource in bytes.
</pre>

<hr/>

<pre>
Defining Names for the Preprocessor
You can specify conditional compilation in a script, based on whether a name is defined on the RC command line with the /d option, or in the file or an include file with the #define directive.
For example, suppose your application has a pop-up menu that should appear only with debugging versions of the application. When you compile the application for normal use, the menu is not included. The following example shows the statements that can be added to the resource-definition file to define a Debug menu:

#include &lt;windows.h&gt;

MainMenu MENU
{
    //. . .
#ifdef DEBUG
    POPUP "&Debug"
    {
        MENUITEM "&Memory usage", ID_MEMORY
        MENUITEM "&Walk data heap", ID_WALK_HEAP
    }
#endif
}

When compiling resources for a debugging version of the application, you could include the Debug menu by using the following command:
  rc -d DEBUG myapp.rc

To compile resources for a normal version of the application?one that does not include the Debug menu?you could use the following command:
  rc myapp.rc
</pre>

<hr/>

<pre>
Renaming the Compiled Resource File

By default, when compiling resources, RC names the compiled resource (.res) file with the base name of the .rc file and places it in the same directory as the .rc file. CVTRES must then be invoked to convert the .res file to a binary resource (.rbj) format which can be understood by the linker. The following example compiles MyApp.rc and creates a compiled resource file named MyApp.res in the same directory as MyApp.rc:
  rc myapp.rc

The /fo option gives the resulting .res file a name that differs from the name of the corresponding .rc file. For example, to name the resulting .res file NewFile.res, use the following command:
  rc -fo newfile.res myapp.rc

The /fo option can also place the .res file in a different directory. For example, the following command places the compiled resource file MyApp.res in the directory C:\Source\Resource:
  rc -fo c:\source\resource\myapp.res myapp.rc
</pre>

<hr/>

<pre>
Searching for Files

By default, RC searches for header files and resource files (such as icon and cursor files) first in the current directory and then in the directories specified by the INCLUDE environment variable. (The PATH environment variable has no effect on which directories RC searches.)
Adding a Directory to Search

You can use the /i option to add a directory to the list of directories RC searches. The compiler then searches the directories in the following order:
The current directory
The directory or directories you specify by using the /i option, in the order in which they appear on the RC command line
The list of directories specified by the INCLUDE environment variable, in the order in which the variable lists them, unless you specify the /x option
The following example compiles the resource-definition file MyApp.rc:
rc /i c:\source\stuff /i d:\resources myapp.rc
When compiling the script MyApp.rc, RC searches for header files and resource files first in the current directory, then in C:\Source\Stuff and D:\Resources, and then in the directories specified by the INCLUDE environment variable.
Ignoring the INCLUDE Environment Variable

You can prevent RC from using the INCLUDE environment variable when determining the directories to search. To do so, use the /x option. The compiler then searches for files only in the current directory and in any directories you specify by using the /i option.
The following command compiles the script file MyApp.rc:
rc /x /i c:\source\stuff myapp.rc
When compiling the script MyApp.rc, RC searches for header files and resource files first in the current directory and then in C:\Source\Stuff. It does not search the directories specified by the INCLUDE environment variable.
</pre>
