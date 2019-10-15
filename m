X-GM-THRID: 6748157701463736320
Date: Tue, 15 Oct 2019 15:18:21 -0700 (PDT)
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <d504514a-93eb-4a60-a99c-8a50bce81677@googlegroups.com>
Subject: doubt on the "Make a driver change" part
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_8073_2017951255.1571177901687"
X-Google-Token: EK2Lme0FIEbGe7c8eEs0
X-Google-IP: 131.100.148.220

------=_Part_8073_2017951255.1571177901687
Content-Type: multipart/alternative; 
	boundary="----=_Part_8074_1469655547.1571177901687"

------=_Part_8074_1469655547.1571177901687
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



Hello, I have a question in one part of the tutorial and I am unable to access outreachy irc.

I'm stuck in the "Make a driver change" part of the tutorial.
I am following these steps: 
First I check the file path using git grep memstick -- '* Makefile'. 
Then I access the file using vim drivers/memstick/core/ms_block.c. 
Then I add printk(KERN_DEBUG "I can modify") to the msb_probe function.
Then I compile the changes using sudo make -j4 and then install the changes using sudo make modules_install install. 
Finally i restart my computer and i check if the text "I can modify" is present in dmesg | less using "/I can modify".
But every time I've tried this or something, it always gives Pattern not found (press return). 
Has anyone else had a similar problem and can help me?

And Can anyone help me access outreachy IRC? I 'm not getting access.


------=_Part_8074_1469655547.1571177901687
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"tw-ta-container tw-nfl" id=3D"tw-target-text=
-container"><pre class=3D"tw-data-text tw-text-large tw-ta" data-placeholde=
r=3D"Tradu=C3=A7=C3=A3o" id=3D"tw-target-text" style=3D"text-align:left" di=
r=3D"ltr"><span tabindex=3D"0" lang=3D"en">Hello, I have a question in one =
part of the tutorial and I am unable to access outreachy irc.

I&#39;m stuck in the &quot;Make a driver change&quot; part of the tutorial.
I am following these steps: <br>First I check the file path using git grep =
memstick -- &#39;* Makefile&#39;. <br>Then I access the file using vim driv=
ers/memstick/core/ms_block.c. <br>Then I add printk(KERN_DEBUG &quot;I can =
modify&quot;) to the msb_probe function.<br>Then I compile the changes usin=
g sudo make -j4 and then install the changes using sudo make modules_instal=
l install. <br>Finally i restart my computer and i check if the text &quot;=
I can modify&quot; is present in dmesg | less using &quot;/I can modify&quo=
t;.<br>But every time I&#39;ve tried this or something, it always gives Pat=
tern not found (press return). <br>Has anyone else had a similar problem an=
d can help me?

And Can anyone help me access outreachy IRC? I &#39;m not getting access.</=
span></pre></div></div>
------=_Part_8074_1469655547.1571177901687--

------=_Part_8073_2017951255.1571177901687--

