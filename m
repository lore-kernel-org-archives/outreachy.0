X-GM-THRID: 6397270990644051968
Date: Tue, 14 Mar 2017 05:13:51 -0700 (PDT)
From: Tamara Diaconita <diaconitatamara@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: diaconitatamara@gmail.com, linux-doc@vger.kernel.org, corbet@lwn.net,
	diaconita.tamara@gmail.com
Message-Id: <cf778fed-1495-4382-86ab-f043a2641112@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1703141003550.3638@hadrien>
References: <20170314083835.4317-1-diaconita.tamara@gmail.com>
 <alpine.DEB.2.20.1703141003550.3638@hadrien>
Subject: Re: [Outreachy kernel] [PATCH v2] Documentation: admin-guide: Fix
 typos
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_3656_1253676254.1489493631587"
X-Google-Token: EP-8n8YFvAXljmpeuv00
X-Google-IP: 2a02:2f0b:8130:11ea:2816:d9d2:5dd8:da73

------=_Part_3656_1253676254.1489493631587
Content-Type: multipart/alternative; 
	boundary="----=_Part_3657_72492452.1489493631587"

------=_Part_3657_72492452.1489493631587
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Should I keep this in mind for the next patches or should I also reorganize=
=20
this patch?

mar=C8=9Bi, 14 martie 2017, 11:05:55 UTC+2, Julia Lawall a scris:
>
>
>
> On Tue, 14 Mar 2017, Tamara Diaconita wrote:=20
>
> > Fix typos in admin-guide directory.=20
> > Make documentation clear and grammatically correct.=20
>
> You may want to collect the words in which you find problems, and see if=
=20
> other files have the same problems.=20
>
> julia=20
>
> >=20
> > Signed-off-by: Tamara Diaconita <diaconit...@gmail.com <javascript:>>=
=20
> > ---=20
> > Changes since v1:=20
> > *Remove the changes in tainted-kernels.rst file.=20
> >=20
> >  Documentation/admin-guide/kernel-parameters.rst |  2 +-=20
> >  Documentation/admin-guide/ras.rst               | 12 ++++++------=20
> >  2 files changed, 7 insertions(+), 7 deletions(-)=20
> >=20
> > diff --git a/Documentation/admin-guide/kernel-parameters.rst=20
> b/Documentation/admin-guide/kernel-parameters.rst=20
> > index b516164..c5eae20 100644=20
> > --- a/Documentation/admin-guide/kernel-parameters.rst=20
> > +++ b/Documentation/admin-guide/kernel-parameters.rst=20
> > @@ -197,7 +197,7 @@ and is between 256 and 4096 characters. It is=20
> defined in the file=20
> >=20
> >  Finally, the [KMG] suffix is commonly described after a number of=20
> kernel=20
> >  parameter values. These 'K', 'M', and 'G' letters represent the=20
> _binary_=20
> > -multipliers 'Kilo', 'Mega', and 'Giga', equalling 2^10, 2^20, and 2^30=
=20
> > +multipliers 'Kilo', 'Mega', and 'Giga', equaling 2^10, 2^20, and 2^30=
=20
> >  bytes respectively. Such letter suffixes can also be entirely omitted:=
=20
> >=20
> >  .. include:: kernel-parameters.txt=20
> > diff --git a/Documentation/admin-guide/ras.rst=20
> b/Documentation/admin-guide/ras.rst=20
> > index 1b90c6f..8c7bbf2 100644=20
> > --- a/Documentation/admin-guide/ras.rst=20
> > +++ b/Documentation/admin-guide/ras.rst=20
> > @@ -8,7 +8,7 @@ RAS concepts=20
> >  ************=20
> >=20
> >  Reliability, Availability and Serviceability (RAS) is a concept used o=
n=20
> > -servers meant to measure their robusteness.=20
> > +servers meant to measure their robustness.=20
> >=20
> >  Reliability=20
> >    is the probability that a system will produce correct outputs.=20
> > @@ -42,13 +42,13 @@ Among the monitoring measures, the most usual ones=
=20
> include:=20
> >=20
> >  * CPU =E2=80=93 detect errors at instruction execution and at L1/L2/L3=
 caches;=20
> >  * Memory =E2=80=93 add error correction logic (ECC) to detect and corr=
ect=20
> errors;=20
> > -* I/O =E2=80=93 add CRC checksums for tranfered data;=20
> > +* I/O =E2=80=93 add CRC checksums for transferred data;=20
> >  * Storage =E2=80=93 RAID, journal file systems, checksums,=20
> >    Self-Monitoring, Analysis and Reporting Technology (SMART).=20
> >=20
> >  By monitoring the number of occurrences of error detections, it is=20
> possible=20
> >  to identify if the probability of hardware errors is increasing, and,=
=20
> on such=20
> > -case, do a preventive maintainance to replace a degrated component=20
> while=20
> > +case, do a preventive maintenance to replace a degraded component whil=
e=20
> >  those errors are correctable.=20
> >=20
> >  Types of errors=20
> > @@ -121,7 +121,7 @@ using the ``dmidecode`` tool. For example, on a=20
> desktop machine, it shows::=20
> >  On the above example, a DDR4 SO-DIMM memory module is located at the=
=20
> >  system's memory labeled as "BANK 0", as given by the *bank locator*=20
> field.=20
> >  Please notice that, on such system, the *total width* is equal to the=
=20
> > -*data witdh*. It means that such memory module doesn't have error=20
> > +*data width*. It means that such memory module doesn't have error=20
> >  detection/correction mechanisms.=20
> >=20
> >  Unfortunately, not all systems use the same field to specify the memor=
y=20
> > @@ -145,7 +145,7 @@ bank. On this example, from an older server,=20
> ``dmidecode`` shows::=20
> >=20
> >  There, the DDR3 RDIMM memory module is located at the system's memory=
=20
> labeled=20
> >  as "DIMM_A1", as given by the *locator* field. Please notice that this=
=20
> > -memory module has 64 bits of *data witdh* and 72 bits of *total width*=
.=20
> So,=20
> > +memory module has 64 bits of *data width* and 72 bits of *total width*=
.=20
> So,=20
> >  it has 8 extra bits to be used by error detection and correction=20
> mechanisms.=20
> >  Such kind of memory is called Error-correcting code memory (ECC=20
> memory).=20
> >=20
> > @@ -186,7 +186,7 @@ Architecture (MCA)\ [#f3]_.=20
> >  .. [#f1] Please notice that several memory controllers allow operation=
=20
> on a=20
> >    mode called "Lock-Step", where it groups two memory modules together=
,=20
> >    doing 128-bit reads/writes. That gives 16 bits for error correction,=
=20
> with=20
> > -  significatively improves the error correction mechanism, at the=20
> expense=20
> > +  significantly improves the error correction mechanism, at the expens=
e=20
> >    that, when an error happens, there's no way to know what memory=20
> module is=20
> >    to blame. So, it has to blame both memory modules.=20
> >=20
> > --=20
> > 2.9.3=20
> >=20
> > --=20
> > You received this message because you are subscribed to the Google=20
> Groups "outreachy-kernel" group.=20
> > To unsubscribe from this group and stop receiving emails from it, send=
=20
> an email to outreachy-kern...@googlegroups.com <javascript:>.=20
> > To post to this group, send email to outreach...@googlegroups.com=20
> <javascript:>.=20
> > To view this discussion on the web visit=20
> https://groups.google.com/d/msgid/outreachy-kernel/20170314083835.4317-1-=
diaconita.tamara%40gmail.com.=20
>
> > For more options, visit https://groups.google.com/d/optout.=20
> >


------=_Part_3657_72492452.1489493631587
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Should I keep this in mind for the next patches or should =
I also reorganize this patch?<br><br>mar=C8=9Bi, 14 martie 2017, 11:05:55 U=
TC+2, Julia Lawall a scris:<blockquote class=3D"gmail_quote" style=3D"margi=
n: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Tue, 14 Mar 2017, Tamara Diaconita wrote:
<br>
<br>&gt; Fix typos in admin-guide directory.
<br>&gt; Make documentation clear and grammatically correct.
<br>
<br>You may want to collect the words in which you find problems, and see i=
f
<br>other files have the same problems.
<br>
<br>julia
<br>
<br>&gt;
<br>&gt; Signed-off-by: Tamara Diaconita &lt;<a href=3D"javascript:" target=
=3D"_blank" gdf-obfuscated-mailto=3D"Mt2Gj4zyAgAJ" rel=3D"nofollow" onmouse=
down=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hre=
f=3D&#39;javascript:&#39;;return true;">diaconit...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; Changes since v1:
<br>&gt; *Remove the changes in tainted-kernels.rst file.
<br>&gt;
<br>&gt; =C2=A0Documentation/admin-guide/<wbr>kernel-parameters.rst | =C2=
=A02 +-
<br>&gt; =C2=A0Documentation/admin-guide/<wbr>ras.rst =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 | 12 ++++++------
<br>&gt; =C2=A02 files changed, 7 insertions(+), 7 deletions(-)
<br>&gt;
<br>&gt; diff --git a/Documentation/admin-guide/<wbr>kernel-parameters.rst =
b/Documentation/admin-guide/<wbr>kernel-parameters.rst
<br>&gt; index b516164..c5eae20 100644
<br>&gt; --- a/Documentation/admin-guide/<wbr>kernel-parameters.rst
<br>&gt; +++ b/Documentation/admin-guide/<wbr>kernel-parameters.rst
<br>&gt; @@ -197,7 +197,7 @@ and is between 256 and 4096 characters. It is =
defined in the file
<br>&gt;
<br>&gt; =C2=A0Finally, the [KMG] suffix is commonly described after a numb=
er of kernel
<br>&gt; =C2=A0parameter values. These &#39;K&#39;, &#39;M&#39;, and &#39;G=
&#39; letters represent the _binary_
<br>&gt; -multipliers &#39;Kilo&#39;, &#39;Mega&#39;, and &#39;Giga&#39;, e=
qualling 2^10, 2^20, and 2^30
<br>&gt; +multipliers &#39;Kilo&#39;, &#39;Mega&#39;, and &#39;Giga&#39;, e=
qualing 2^10, 2^20, and 2^30
<br>&gt; =C2=A0bytes respectively. Such letter suffixes can also be entirel=
y omitted:
<br>&gt;
<br>&gt; =C2=A0.. include:: kernel-parameters.txt
<br>&gt; diff --git a/Documentation/admin-guide/<wbr>ras.rst b/Documentatio=
n/admin-guide/<wbr>ras.rst
<br>&gt; index 1b90c6f..8c7bbf2 100644
<br>&gt; --- a/Documentation/admin-guide/<wbr>ras.rst
<br>&gt; +++ b/Documentation/admin-guide/<wbr>ras.rst
<br>&gt; @@ -8,7 +8,7 @@ RAS concepts
<br>&gt; =C2=A0************
<br>&gt;
<br>&gt; =C2=A0Reliability, Availability and Serviceability (RAS) is a conc=
ept used on
<br>&gt; -servers meant to measure their robusteness.
<br>&gt; +servers meant to measure their robustness.
<br>&gt;
<br>&gt; =C2=A0Reliability
<br>&gt; =C2=A0 =C2=A0is the probability that a system will produce correct=
 outputs.
<br>&gt; @@ -42,13 +42,13 @@ Among the monitoring measures, the most usual =
ones include:
<br>&gt;
<br>&gt; =C2=A0* CPU =E2=80=93 detect errors at instruction execution and a=
t L1/L2/L3 caches;
<br>&gt; =C2=A0* Memory =E2=80=93 add error correction logic (ECC) to detec=
t and correct errors;
<br>&gt; -* I/O =E2=80=93 add CRC checksums for tranfered data;
<br>&gt; +* I/O =E2=80=93 add CRC checksums for transferred data;
<br>&gt; =C2=A0* Storage =E2=80=93 RAID, journal file systems, checksums,
<br>&gt; =C2=A0 =C2=A0Self-Monitoring, Analysis and Reporting Technology (S=
MART).
<br>&gt;
<br>&gt; =C2=A0By monitoring the number of occurrences of error detections,=
 it is possible
<br>&gt; =C2=A0to identify if the probability of hardware errors is increas=
ing, and, on such
<br>&gt; -case, do a preventive maintainance to replace a degrated componen=
t while
<br>&gt; +case, do a preventive maintenance to replace a degraded component=
 while
<br>&gt; =C2=A0those errors are correctable.
<br>&gt;
<br>&gt; =C2=A0Types of errors
<br>&gt; @@ -121,7 +121,7 @@ using the ``dmidecode`` tool. For example, on =
a desktop machine, it shows::
<br>&gt; =C2=A0On the above example, a DDR4 SO-DIMM memory module is locate=
d at the
<br>&gt; =C2=A0system&#39;s memory labeled as &quot;BANK 0&quot;, as given =
by the *bank locator* field.
<br>&gt; =C2=A0Please notice that, on such system, the *total width* is equ=
al to the
<br>&gt; -*data witdh*. It means that such memory module doesn&#39;t have e=
rror
<br>&gt; +*data width*. It means that such memory module doesn&#39;t have e=
rror
<br>&gt; =C2=A0detection/correction mechanisms.
<br>&gt;
<br>&gt; =C2=A0Unfortunately, not all systems use the same field to specify=
 the memory
<br>&gt; @@ -145,7 +145,7 @@ bank. On this example, from an older server, `=
`dmidecode`` shows::
<br>&gt;
<br>&gt; =C2=A0There, the DDR3 RDIMM memory module is located at the system=
&#39;s memory labeled
<br>&gt; =C2=A0as &quot;DIMM_A1&quot;, as given by the *locator* field. Ple=
ase notice that this
<br>&gt; -memory module has 64 bits of *data witdh* and 72 bits of *total w=
idth*. So,
<br>&gt; +memory module has 64 bits of *data width* and 72 bits of *total w=
idth*. So,
<br>&gt; =C2=A0it has 8 extra bits to be used by error detection and correc=
tion mechanisms.
<br>&gt; =C2=A0Such kind of memory is called Error-correcting code memory (=
ECC memory).
<br>&gt;
<br>&gt; @@ -186,7 +186,7 @@ Architecture (MCA)\ [#f3]_.
<br>&gt; =C2=A0.. [#f1] Please notice that several memory controllers allow=
 operation on a
<br>&gt; =C2=A0 =C2=A0mode called &quot;Lock-Step&quot;, where it groups tw=
o memory modules together,
<br>&gt; =C2=A0 =C2=A0doing 128-bit reads/writes. That gives 16 bits for er=
ror correction, with
<br>&gt; - =C2=A0significatively improves the error correction mechanism, a=
t the expense
<br>&gt; + =C2=A0significantly improves the error correction mechanism, at =
the expense
<br>&gt; =C2=A0 =C2=A0that, when an error happens, there&#39;s no way to kn=
ow what memory module is
<br>&gt; =C2=A0 =C2=A0to blame. So, it has to blame both memory modules.
<br>&gt;
<br>&gt; --
<br>&gt; 2.9.3
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"Mt2Gj4zyAgAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"Mt2Gj4zyAgAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20170314083835.4317-1-diaconita.tamara=
%40gmail.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=
=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/20170314083835.4=
317-1-diaconita.tamara%40gmail.com&#39;;return true;" onclick=3D"this.href=
=3D&#39;https://groups.google.com/d/msgid/outreachy-kernel/20170314083835.4=
317-1-diaconita.tamara%40gmail.com&#39;;return true;">https://groups.google=
.com/d/<wbr>msgid/outreachy-kernel/<wbr>20170314083835.4317-1-<wbr>diaconit=
a.tamara%40gmail.com</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;</blockquote></div>
------=_Part_3657_72492452.1489493631587--

------=_Part_3656_1253676254.1489493631587--

