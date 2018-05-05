<?php
/*
Version: 1.0
Author: June
*/

class ControllerDownloadFiles extends Controller {

    public function index()
    {
        $file_dir = "/usr/local/storage/download";
        $file_name ="test.docx";
        $file_dir = $file_dir . "/";
        if (!file_exists($file_dir . $file_name)) {   //检查文件是否存在
            echo "文件找不到";
            exit;
        }
        else
        {
            $file = fopen($file_dir . $file_name, "r"); // 打开文件
            // 输入文件标签
            Header("Content-type: application/octet-stream");
            Header("Accept-Ranges: bytes");
            Header("Accept-Length: " . filesize($file_dir . $file_name));
            Header("Content-Disposition: attachment; filename=" . $file_name);
            // 输出文件内容
            echo fread($file, filesize($file_dir . $file_name));
            fclose($file);
            exit();
        }
    }

    public function application()
    {
        $file_dir = "/usr/local/storage/download";
        $file_name ="飞拍科技维修申请表.docx";
        $file_dir = $file_dir . "/";
        if (!file_exists($file_dir . $file_name)) {   //检查文件是否存在
            echo "文件找不到";
            exit;
        }
        else
        {
            $file = fopen($file_dir . $file_name, "r"); // 打开文件
            // 输入文件标签
            Header("Content-type: application/octet-stream");
            Header("Accept-Ranges: bytes");
            Header("Accept-Length: " . filesize($file_dir . $file_name));
            Header("Content-Disposition: attachment; filename=" . $file_name);
            // 输出文件内容
            echo fread($file, filesize($file_dir . $file_name));
            fclose($file);
            exit();
        }
    }

    public function applicationus()
    {
        $file_dir = "/usr/local/storage/download";
        $file_name ="Flypie Technology Maintenance Application Form.docx";
        $file_dir = $file_dir . "/";
        if (!file_exists($file_dir . $file_name)) {   //检查文件是否存在
            echo "File not found";
            exit;
        }
        else
        {
            $file = fopen($file_dir . $file_name, "r"); // 打开文件
            // 输入文件标签
            Header("Content-type: application/octet-stream");
            Header("Accept-Ranges: bytes");
            Header("Accept-Length: " . filesize($file_dir . $file_name));
            Header("Content-Disposition: attachment; filename=" . $file_name);
            // 输出文件内容
            echo fread($file, filesize($file_dir . $file_name));
            fclose($file);
            exit();
        }
    }

}


