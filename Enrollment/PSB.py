#! /usr/bin/env python
#  -*- coding: utf-8 -*-
#
# GUI module generated by PAGE version 4.26
#  in conjunction with Tcl version 8.6
#    Nov 20, 2019 11:55:21 AM +0700  platform: Windows NT

import sys
import mysql.connector as db_connect
from tkinter import *

try:
    import tkinter as tk
except ImportError:
    pass
try:
    import ttk
    py3 = False
except ImportError:
    import tkinter.ttk as ttk
    py3 = True

import PSB_support

def vp_start_gui():
    '''Starting point when module is the main routine.'''
    global val, w, root
    root = tk.Tk()
    top = Toplevel1 (root)
    PSB_support.init(root, top)
    root.mainloop()

w = None
def create_Toplevel1(root, *args, **kwargs):
    '''Starting point when module is imported by another program.'''
    global w, w_win, rt
    rt = root
    w = tk.Toplevel (root)
    top = Toplevel1 (w)
    PSB_support.init(w, top, *args, **kwargs)
    return (w, top)

def destroy_Toplevel1():
    global w
    w.destroy()
    w = None

class Toplevel1:
    try:
        sql_connect = db_connect.connect(user="root", host="localhost", passwd="", database="db_student")
        if sql_connect.is_connected():
            cursor = sql_connect.cursor()
            print("DB Connected")
        else:
            pass
    except Exception:
        print("DB Can't Connected")
    def __init__(self, top=None):
        dup_top = top
        _bgcolor = '#d9d9d9'  # X11 color: 'gray85'
        _fgcolor = '#000000'  # X11 color: 'black'
        _compcolor = '#d9d9d9' # X11 color: 'gray85'
        _ana1color = '#d9d9d9' # X11 color: 'gray85'
        _ana2color = '#ececec' # Closest X11 color: 'gray92'

        top.geometry("600x450+372+122")
        top.minsize(116, 1)
        top.maxsize(1370, 750)
        top.resizable(1, 1)
        top.title("Penerimaan Siswa Baru SMK Cyber Media Utama Tahun 2020")
        top.configure(background="#d9d9d9")
        top.configure(highlightbackground="#d9d9d9")
        top.configure(highlightcolor="black")

        self.id_field = tk.Entry(top)
        self.id_field.place(relx=0.3, rely=0.178,height=20, relwidth=0.357)
        self.id_field.configure(background="white")
        self.id_field.configure(disabledforeground="#a3a3a3")
        self.id_field.configure(font="TkFixedFont")
        self.id_field.configure(foreground="#000000")
        self.id_field.configure(highlightbackground="#d9d9d9")
        self.id_field.configure(highlightcolor="black")
        self.id_field.configure(insertbackground="black")
        self.id_field.configure(selectbackground="#c4c4c4")
        self.id_field.configure(selectforeground="black")

        self.Message1 = tk.Message(top)
        self.Message1.place(relx=0.0, rely=0.889, relheight=0.118, relwidth=0.267)
        self.Message1.configure(background="#d9d9d9")
        self.Message1.configure(foreground="#000000")
        self.Message1.configure(highlightbackground="#d9d9d9")
        self.Message1.configure(highlightcolor="black")
        self.Message1.configure(text='''Copyright 2019 © Reserved
SMK Cyber Media Utama''')
        self.Message1.configure(width=160)

        self.Label1 = tk.Label(top)
        self.Label1.place(relx=0.35, rely=0.111, height=21, width=157)
        self.Label1.configure(activebackground="#f9f9f9")
        self.Label1.configure(activeforeground="black")
        self.Label1.configure(background="#d9d9d9")
        self.Label1.configure(disabledforeground="#a3a3a3")
        self.Label1.configure(foreground="#000000")
        self.Label1.configure(highlightbackground="#d9d9d9")
        self.Label1.configure(highlightcolor="black")
        self.Label1.configure(text='''Masukkan Kode Pendaftaran''')

        self.Label2 = tk.Label(top)
        self.Label2.place(relx=0.3, rely=0.333, height=21, width=224)
        self.Label2.configure(activebackground="#f9f9f9")
        self.Label2.configure(activeforeground="black")
        self.Label2.configure(background="#d9d9d9")
        self.Label2.configure(disabledforeground="#a3a3a3")
        self.Label2.configure(foreground="#000000")
        self.Label2.configure(highlightbackground="#d9d9d9")
        self.Label2.configure(highlightcolor="black")
        self.Label2.configure(text="")

        self.register_button = tk.Button(top)
        self.register_button.place(relx=0.4, rely=0.244, height=24, width=93)
        self.register_button.configure(activebackground="#ececec")
        self.register_button.configure(activeforeground="#000000")
        self.register_button.configure(background="#d9d9d9")
        self.register_button.configure(disabledforeground="#a3a3a3")
        self.register_button.configure(foreground="#000000")
        self.register_button.configure(highlightbackground="#d9d9d9")
        self.register_button.configure(highlightcolor="black")
        self.register_button.configure(pady="0")
        self.register_button.configure(text='''Register''')
        self.register_button.configure(command=self.verify_code)

    def verify_code(self):
        id_input = self.id_field.get()
        sql = "select * from info_code"
        self.cursor.execute(sql)
        results = self.cursor.fetchall()
        # for d in results:
        p0 = results[0]
        p1 = results[1]
        p2 = results[2]
        p3 = results[3]
        if id_input == p0[0] or id_input == p1[0] or id_input == p2[0] or id_input == p3[0]:
            print("Kode Valid")
            self.Label2.configure(text="")
            PSB_support.show_regist_form()
        else:
            if id_input == "" or id_input == " ":
                fail_string = "Can't Verify that code"
                print("Kode Invalid")
            else:
                fail_string = "Can't Verify {}".format(id_input)
                print("Kode Invalid")
            self.Label2.configure(text=fail_string)

if __name__ == '__main__':
    vp_start_gui()





