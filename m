X-GM-THRID: 6341882177714651136
Date: Sat, 15 Oct 2016 22:33:11 -0700 (PDT)
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <d11cf10a-059c-48ae-a33f-7950190831f5@googlegroups.com>
In-Reply-To: <20161016022145.GA2215@localhost>
References: <20161016022145.GA2215@localhost>
Subject: Re: Coccinelle Constification
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2763_1425429400.1476595991790"
X-Google-Token: EJeijMAFraW0Nr4af9w0
X-Google-IP: 14.139.242.195

------=_Part_2763_1425429400.1476595991790
Content-Type: multipart/alternative; 
	boundary="----=_Part_2764_729016232.1476595991790"

------=_Part_2764_729016232.1476595991790
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


Hey Liz,

Eva has already explained the process well but I would like to
share my approach :

1. Firstly, I find all structures of the form static struct s i ={...};
by using the script:
@r disable optional_qualifier@
identifier s,i;
@@
* static struct s i ={...};
disable optional_qualifier is used here as we want to look only for
the non-const structures.

2. Now pick a structure instance from a file and look how it is used
in that file.
If the structure's fields are not getting modified => it can be
declared as const.
You will have to analyze the usage carefully so that nothing is missed.
Also, you can do a grep to be sure that all the referenced are covered.

3. After this you can write a Coccinelle script to constify all the
instances that follows this particular pattern of usage.

Make a rule in the script which matches the structure's reference that 
is justified for const declaration and stores the reference position.
Look for the @ok@ rule in my scripts.
Now make another rule which looks for any other reference other 
than the above one and stores this position as well.
Look for @bad@ rule for this step.
Next, add another rule @depends on !bad disable optional_qualifier@
that declares the structure as const.

4. After doing the changes compile the affected drivers and run
size <affected_file_name> to get the size details of the affected
file.

I hope this helps :)

Thanks,
Bhumika

------=_Part_2764_729016232.1476595991790
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br>Hey Liz,<br><br>Eva has already explained the process =
well but I would like to<br>share my approach :<br><br>1. Firstly, I find a=
ll structures of the form static struct s i =3D{...};<br>by using the scrip=
t:<br>@r disable optional_qualifier@<br>identifier s,i;<br>@@<br>* static s=
truct s i =3D{...};<br>disable optional_qualifier is used here as we want t=
o look only for<br>the non-const structures.<br><br>2. Now pick a structure=
 instance from a file and look how it is used<br>in that file.<br>If the st=
ructure&#39;s fields are not getting modified =3D&gt; it can be<br>declared=
 as const.<br>You will have to analyze the usage carefully so that nothing =
is missed.<br>Also, you can do a grep to be sure that all the referenced ar=
e covered.<br><br>3. After this you can write a Coccinelle script to consti=
fy all the<br>instances that follows this particular pattern of usage.<br><=
br>Make a rule in the script which matches the structure&#39;s reference th=
at <br>is justified for const declaration and stores the reference position=
.<br>Look for the @ok@ rule in my scripts.<br>Now make another rule which l=
ooks for any other reference other <br>than the above one and stores this p=
osition as well.<br>Look for @bad@ rule for this step.<br>Next, add another=
 rule @depends on !bad disable optional_qualifier@<br>that declares the str=
ucture as const.<br><br>4. After doing the changes compile the affected dri=
vers and run<br>size &lt;affected_file_name&gt; to get the size details of =
the affected<br>file.<br><br>I hope this helps :)<br><br>Thanks,<br>Bhumika=
<br></div>
------=_Part_2764_729016232.1476595991790--

------=_Part_2763_1425429400.1476595991790--

