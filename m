X-GM-THRID: 6250350811445985280
X-Received: by 10.129.116.214 with SMTP id p205mr705047ywc.55.1455274414244;
        Fri, 12 Feb 2016 02:53:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.91.102 with SMTP id y93ls1830900qgd.35.gmail; Fri, 12 Feb
 2016 02:53:33 -0800 (PST)
X-Received: by 10.140.156.139 with SMTP id c133mr722764qhc.4.1455274413522;
        Fri, 12 Feb 2016 02:53:33 -0800 (PST)
Return-Path: <rakhish1994@gmail.com>
Received: from mail-io0-x236.google.com (mail-io0-x236.google.com. [2607:f8b0:4001:c06::236])
        by gmr-mx.google.com with ESMTPS id p10si508084igg.1.2016.02.12.02.53.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 02:53:33 -0800 (PST)
Received-SPF: pass (google.com: domain of rakhish1994@gmail.com designates 2607:f8b0:4001:c06::236 as permitted sender) client-ip=2607:f8b0:4001:c06::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of rakhish1994@gmail.com designates 2607:f8b0:4001:c06::236 as permitted sender) smtp.mailfrom=rakhish1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x236.google.com with SMTP id l127so87118900iof.3
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 02:53:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=RFhj6aFoHdmkd5sRE2nOmf8UwvyyDciNCWK2I9zDs5I=;
        b=bJQ5nyrOecuy8XCZY4twWgaxr+3brGCtHEkMW3BVDoAPD5UJrRrzwaqbhSU4i20nTS
         EVp7q1SRzPOHCJXbDYUZzrdmstv0vbiYPUBtgqCSMPZ8Ude8CyryOovAD0uJ2pzO2ldg
         2FRYO65dTcYM9XFLzIW281VMZjJw+0AXa7LOGQvA6L+7oJi7ENXkxjgiQ/uC6HzOKGZx
         mQwAHTP5oyg50z8Jq4YqRcJg3yYC7Bj2O06XVGC/Tk4d1GI5G+YPpRm08v0mcGK19Ry5
         X/uVbLjfXMSv2LGUyLzyElq26fB2kKeB5lee7YKSFEHzRu5pkfPXV5+KDi+vij2162Ng
         ueMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type;
        bh=RFhj6aFoHdmkd5sRE2nOmf8UwvyyDciNCWK2I9zDs5I=;
        b=dwO5fngfsg2XULxNHQA6xQpiUg6A7IZZvOJEooGQUZbCx4P0ES6QchW8CVwOSyoDGw
         3fZcw5ZxU9QAFkz6eOSlQvHq4cOKGrONQKskSjZl7ElrIT7eOOIB3feAfiqy0Xy1bAhf
         2znlRtCbF9MbZAOSOTPzou3zjh8nC0SiGqhpnXJuZHDMHdPXDYvlKSiRRZBUvkihXb9+
         trJvhGhxJ9bWDeYvqoRv9Tg/XEXOG4Vw/+n6JScDb3e5Q3Nmi0pI21AzoHY2U3wsLRts
         S2b/bWkSXkxBfVgB2qKCEqIbelyGVgSODW8ifLMlTwrZnRCS9A8wlBxMeeoVGJZsd/wq
         G4XQ==
X-Gm-Message-State: AG10YOR73+QB8xs3QPVptfdaOxuZpJ+KdOWPxEe4DXxHW17RV/VzqJovDEDVQrWsGWgUYVShbqqog/jYNEjJow==
X-Received: by 10.107.130.221 with SMTP id m90mr2008975ioi.69.1455274413382;
 Fri, 12 Feb 2016 02:53:33 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.134.204 with HTTP; Fri, 12 Feb 2016 02:52:54 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1602121149350.2055@localhost6.localdomain6>
References: <1455273194-15848-1-git-send-email-rakhish1994@gmail.com> <alpine.DEB.2.02.1602121149350.2055@localhost6.localdomain6>
From: RAKHI SHARMA <rakhish1994@gmail.com>
Date: Fri, 12 Feb 2016 16:22:54 +0530
Message-ID: <CAMnyiXsdL4qCkv3voB5FTaOOQ1wC6n-D4e6Sw5MZBEc8--FGFg@mail.gmail.com>
Subject: Re: [PATCH 4/4] staging: rtl8712: Fixed a comparision coding style warning.
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a113f0bfa75e070052b907a8f

--001a113f0bfa75e070052b907a8f
Content-Type: text/plain; charset=UTF-8

On Fri, Feb 12, 2016 at 4:19 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Fri, 12 Feb 2016, Rakhi Sharma wrote:
>
> > WARNING: Comparisons should place the constant on the right side of the
> test
> > Fixed this warning by placing the constant on right side.
>
> This says patch 4/4, but did you send the other three?
>
> No I haven't. It my mistake I was in the same branch.do I send another
version?

> julia
>
> > Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>
> > ---
> >  drivers/staging/rtl8712/rtl8712_efuse.c | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8712/rtl8712_efuse.c
> b/drivers/staging/rtl8712/rtl8712_efuse.c
> > index eaa93fb..76f60ba 100644
> > --- a/drivers/staging/rtl8712/rtl8712_efuse.c
> > +++ b/drivers/staging/rtl8712/rtl8712_efuse.c
> > @@ -161,7 +161,7 @@ static u8 efuse_is_empty(struct _adapter *padapter,
> u8 *empty)
> >
> >       /* read one byte to check if E-Fuse is empty */
> >       if (efuse_one_byte_rw(padapter, true, 0, &value)) {
> > -             if (0xFF == value)
> > +             if (value == 0xFF)
> >                       *empty = true;
> >               else
> >                       *empty = false;
> > @@ -345,7 +345,7 @@ static u8 fix_header(struct _adapter *padapter, u8
> header, u16 header_addr)
> >                               ret = false;
> >                       } else if (pkt.data[i * 2] != value) {
> >                               ret = false;
> > -                             if (0xFF == value) /* write again */
> > +                             if (value == 0xFF) /* write again */
> >                                       efuse_one_byte_write(padapter,
> addr,
> >                                                       pkt.data[i * 2]);
> >                       }
> > @@ -353,7 +353,7 @@ static u8 fix_header(struct _adapter *padapter, u8
> header, u16 header_addr)
> >                               ret = false;
> >                       } else if (pkt.data[i * 2 + 1] != value) {
> >                               ret = false;
> > -                             if (0xFF == value) /* write again */
> > +                             if (value == 0xFF) /* write again */
> >                                       efuse_one_byte_write(padapter,
> addr + 1,
> >                                                            pkt.data[i *
> 2 +
> >                                                                     1]);
> > @@ -420,7 +420,7 @@ u8 r8712_efuse_pg_packet_write(struct _adapter
> *padapter, const u8 offset,
> >               }
> >               /* write header fail */
> >               bResult = false;
> > -             if (0xFF == efuse_data)
> > +             if (efuse_data == 0xFF)
> >                       return bResult; /* nothing damaged. */
> >               /* call rescue procedure */
> >               if (!fix_header(padapter, efuse_data, efuse_addr))
> > --
> > 1.9.1
> >
> >
>

--001a113f0bfa75e070052b907a8f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+PGRpdiBjbGFzcz0iZ21haWxfZXh0cmEiPjxkaXYgY2xhc3M9ImdtYWls
X3F1b3RlIj5PbiBGcmksIEZlYiAxMiwgMjAxNiBhdCA0OjE5IFBNLCBKdWxpYSBMYXdhbGwgPHNw
YW4gZGlyPSJsdHIiPiZsdDs8YSBocmVmPSJtYWlsdG86anVsaWEubGF3YWxsQGxpcDYuZnIiIHRh
cmdldD0iX2JsYW5rIj5qdWxpYS5sYXdhbGxAbGlwNi5mcjwvYT4mZ3Q7PC9zcGFuPiB3cm90ZTo8
YnI+PGJsb2NrcXVvdGUgY2xhc3M9ImdtYWlsX3F1b3RlIiBzdHlsZT0ibWFyZ2luOjAgMCAwIC44
ZXg7Ym9yZGVyLWxlZnQ6MXB4ICNjY2Mgc29saWQ7cGFkZGluZy1sZWZ0OjFleCI+PHNwYW4gY2xh
c3M9IiI+PGJyPg0KPGJyPg0KT24gRnJpLCAxMiBGZWIgMjAxNiwgUmFraGkgU2hhcm1hIHdyb3Rl
Ojxicj4NCjxicj4NCiZndDsgV0FSTklORzogQ29tcGFyaXNvbnMgc2hvdWxkIHBsYWNlIHRoZSBj
b25zdGFudCBvbiB0aGUgcmlnaHQgc2lkZSBvZiB0aGUgdGVzdDxicj4NCiZndDsgRml4ZWQgdGhp
cyB3YXJuaW5nIGJ5IHBsYWNpbmcgdGhlIGNvbnN0YW50IG9uIHJpZ2h0IHNpZGUuPGJyPg0KPGJy
Pg0KPC9zcGFuPlRoaXMgc2F5cyBwYXRjaCA0LzQsIGJ1dCBkaWQgeW91IHNlbmQgdGhlIG90aGVy
IHRocmVlPzxicj4NCjxzcGFuIGNsYXNzPSJIT0VuWmIiPjxmb250IGNvbG9yPSIjODg4ODg4Ij48
YnI+PC9mb250Pjwvc3Bhbj48L2Jsb2NrcXVvdGU+PGRpdj5ObyBJIGhhdmVuJiMzOTt0LiBJdCBt
eSBtaXN0YWtlIEkgd2FzIGluIHRoZSBzYW1lIGJyYW5jaC5kbyBJIHNlbmQgYW5vdGhlciB2ZXJz
aW9uPzxicj48L2Rpdj48YmxvY2txdW90ZSBjbGFzcz0iZ21haWxfcXVvdGUiIHN0eWxlPSJtYXJn
aW46MCAwIDAgLjhleDtib3JkZXItbGVmdDoxcHggI2NjYyBzb2xpZDtwYWRkaW5nLWxlZnQ6MWV4
Ij48c3BhbiBjbGFzcz0iSE9FblpiIj48Zm9udCBjb2xvcj0iIzg4ODg4OCI+DQpqdWxpYTxicj4N
CjwvZm9udD48L3NwYW4+PGRpdiBjbGFzcz0iSE9FblpiIj48ZGl2IGNsYXNzPSJoNSI+PGJyPg0K
Jmd0OyBTaWduZWQtb2ZmLWJ5OiBSYWtoaSBTaGFybWEgJmx0OzxhIGhyZWY9Im1haWx0bzpyYWto
aXNoMTk5NEBnbWFpbC5jb20iPnJha2hpc2gxOTk0QGdtYWlsLmNvbTwvYT4mZ3Q7PGJyPg0KJmd0
OyAtLS08YnI+DQomZ3Q7wqAgZHJpdmVycy9zdGFnaW5nL3J0bDg3MTIvcnRsODcxMl9lZnVzZS5j
IHwgOCArKysrLS0tLTxicj4NCiZndDvCoCAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCsp
LCA0IGRlbGV0aW9ucygtKTxicj4NCiZndDs8YnI+DQomZ3Q7IGRpZmYgLS1naXQgYS9kcml2ZXJz
L3N0YWdpbmcvcnRsODcxMi9ydGw4NzEyX2VmdXNlLmMgYi9kcml2ZXJzL3N0YWdpbmcvcnRsODcx
Mi9ydGw4NzEyX2VmdXNlLmM8YnI+DQomZ3Q7IGluZGV4IGVhYTkzZmIuLjc2ZjYwYmEgMTAwNjQ0
PGJyPg0KJmd0OyAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvcnRsODcxMi9ydGw4NzEyX2VmdXNlLmM8
YnI+DQomZ3Q7ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9ydGw4NzEyL3J0bDg3MTJfZWZ1c2UuYzxi
cj4NCiZndDsgQEAgLTE2MSw3ICsxNjEsNyBAQCBzdGF0aWMgdTggZWZ1c2VfaXNfZW1wdHkoc3Ry
dWN0IF9hZGFwdGVyICpwYWRhcHRlciwgdTggKmVtcHR5KTxicj4NCiZndDs8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAvKiByZWFkIG9uZSBieXRlIHRvIGNoZWNrIGlmIEUtRnVzZSBpcyBlbXB0eSAqLzxi
cj4NCiZndDvCoCDCoCDCoCDCoGlmIChlZnVzZV9vbmVfYnl0ZV9ydyhwYWRhcHRlciwgdHJ1ZSwg
MCwgJmFtcDt2YWx1ZSkpIHs8YnI+DQomZ3Q7IC3CoCDCoCDCoCDCoCDCoCDCoCDCoGlmICgweEZG
ID09IHZhbHVlKTxicj4NCiZndDsgK8KgIMKgIMKgIMKgIMKgIMKgIMKgaWYgKHZhbHVlID09IDB4
RkYpPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgKmVtcHR5ID0g
dHJ1ZTs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBlbHNlPGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgKmVtcHR5ID0gZmFsc2U7PGJyPg0KJmd0OyBA
QCAtMzQ1LDcgKzM0NSw3IEBAIHN0YXRpYyB1OCBmaXhfaGVhZGVyKHN0cnVjdCBfYWRhcHRlciAq
cGFkYXB0ZXIsIHU4IGhlYWRlciwgdTE2IGhlYWRlcl9hZGRyKTxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHJldCA9IGZhbHNlOzxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoH0gZWxzZSBpZiAocGt0LmRhdGFb
aSAqIDJdICE9IHZhbHVlKSB7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgcmV0ID0gZmFsc2U7PGJyPg0KJmd0OyAtwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBpZiAoMHhGRiA9PSB2YWx1ZSkgLyogd3JpdGUg
YWdhaW4gKi88YnI+DQomZ3Q7ICvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoGlmICh2YWx1ZSA9PSAweEZGKSAvKiB3cml0ZSBhZ2FpbiAqLzxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGVm
dXNlX29uZV9ieXRlX3dyaXRlKHBhZGFwdGVyLCBhZGRyLDxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoHBrdC5kYXRhW2kgKiAyXSk7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgfTxicj4NCiZndDsgQEAgLTM1Myw3ICszNTMsNyBAQCBzdGF0aWMg
dTggZml4X2hlYWRlcihzdHJ1Y3QgX2FkYXB0ZXIgKnBhZGFwdGVyLCB1OCBoZWFkZXIsIHUxNiBo
ZWFkZXJfYWRkcik8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqByZXQgPSBmYWxzZTs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqB9IGVsc2UgaWYgKHBrdC5kYXRhW2kgKiAyICsgMV0gIT0gdmFsdWUpIHs8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqByZXQg
PSBmYWxzZTs8YnI+DQomZ3Q7IC3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoGlmICgweEZGID09IHZhbHVlKSAvKiB3cml0ZSBhZ2FpbiAqLzxicj4NCiZndDsgK8Kg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgaWYgKHZhbHVlID09IDB4
RkYpIC8qIHdyaXRlIGFnYWluICovPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgZWZ1c2Vfb25lX2J5dGVfd3JpdGUocGFk
YXB0ZXIsIGFkZHIgKyAxLDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCBwa3QuZGF0YVtpICogMiArPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgMV0pOzxicj4NCiZndDsgQEAgLTQyMCw3ICs0MjAsNyBAQCB1OCBy
ODcxMl9lZnVzZV9wZ19wYWNrZXRfd3JpdGUoc3RydWN0IF9hZGFwdGVyICpwYWRhcHRlciwgY29u
c3QgdTggb2Zmc2V0LDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoH08YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAvKiB3cml0ZSBoZWFkZXIgZmFpbCAqLzxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoGJSZXN1bHQgPSBmYWxzZTs8YnI+DQomZ3Q7IC3CoCDCoCDC
oCDCoCDCoCDCoCDCoGlmICgweEZGID09IGVmdXNlX2RhdGEpPGJyPg0KJmd0OyArwqAgwqAgwqAg
wqAgwqAgwqAgwqBpZiAoZWZ1c2VfZGF0YSA9PSAweEZGKTxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoHJldHVybiBiUmVzdWx0OyAvKiBub3RoaW5nIGRhbWFnZWQu
ICovPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgLyogY2FsbCByZXNjdWUgcHJvY2Vk
dXJlICovPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgaWYgKCFmaXhfaGVhZGVyKHBh
ZGFwdGVyLCBlZnVzZV9kYXRhLCBlZnVzZV9hZGRyKSk8YnI+DQomZ3Q7IC0tPGJyPg0KJmd0OyAx
LjkuMTxicj4NCiZndDs8YnI+DQomZ3Q7PGJyPg0KPC9kaXY+PC9kaXY+PC9ibG9ja3F1b3RlPjwv
ZGl2Pjxicj48L2Rpdj48L2Rpdj4NCg==
--001a113f0bfa75e070052b907a8f--

