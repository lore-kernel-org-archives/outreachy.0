X-GM-THRID: 6390824128052461568
X-Received: by 10.46.77.69 with SMTP id a66mr130838ljb.11.1488270595183;
        Tue, 28 Feb 2017 00:29:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.84.73 with SMTP id y9ls41535ljd.8.gmail; Tue, 28 Feb 2017
 00:29:54 -0800 (PST)
X-Received: by 10.46.20.72 with SMTP id 8mr129939lju.19.1488270594626;
        Tue, 28 Feb 2017 00:29:54 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-lf0-x244.google.com (mail-lf0-x244.google.com. [2a00:1450:4010:c07::244])
        by gmr-mx.google.com with ESMTPS id v70si126302wmf.0.2017.02.28.00.29.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 00:29:54 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) client-ip=2a00:1450:4010:c07::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x244.google.com with SMTP id l6so416298lfb.3
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Feb 2017 00:29:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=XYEw2B3NJS57xlUjrsa+z0pbkXX1itTGbW5jhTpdzsY=;
        b=VdlEpLPlSOEEm65bIlP04I3kJ9p965+dQccW8DnY4FbrMPGIXvNq/flKmrRyeo/q9J
         neaFSo9MirPHh1xUotnYaSa/1Gp91xRPgoE3C5x5C/zdycfzxOo1pD6XmlED7lOVLyAW
         JMVAYCSk8V3rpQNXxNuaMVPkpisceRP5rMVXTj6IZ1zI7fvcKFv8kHRw+vOWprkgmhEn
         bj/3Oc+2r1tvtGBHHfDg6NCA1IIvsNbyuDBPRQLSOq+tbF3RLHl5UkU9DM7a4FY9YcY2
         ljVtuuZ1eedFu6k2sDCMOaPWdgx5LHrDK8EG3Vp1fmXlqgJ/d29ZnK33aV46qgWaMXh2
         MVdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=XYEw2B3NJS57xlUjrsa+z0pbkXX1itTGbW5jhTpdzsY=;
        b=bk194gad98uGWO/kgI8pjkgQ9Icmwkcsmc48eTNpSBC6HL5oCqq+IT9Pz3/t2xf6XS
         g1rzLdj3te0MlUeUIcMTslvpKoTlcH7MDXvHj9el8esKHP7w/DqcipEk7j/z24FSmgyK
         yCRn4HKBlg4zUgBl6trrr+5yghvcOt8GkfNGiFe/rQA3Nt3500lnBLdx1hT0P2d3CbQP
         qisuIcY6WDWEeRsfDAa+Xe/ODWY3PKd7EHNw0HjU93fJCCs2kKPzAwWmEWL3YTZf5eqo
         QsZjr2a+ejEnK6tP8hNRmB6nZyFB+IzBeK0iXxv50Fd+D7i+oGYSz9da9YCUOSezGiRu
         xsUw==
X-Gm-Message-State: AMke39nZjrsrBYWp0zn8fLzJ9mJ12P7njh3t1WGQX1wzHYVlQr8WC/kVECqicw6XKnitSxcGyJ4jz/HJWo9Lnw==
X-Received: by 10.25.125.194 with SMTP id y185mr369500lfc.141.1488270594035;
 Tue, 28 Feb 2017 00:29:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.151.142 with HTTP; Tue, 28 Feb 2017 00:29:53 -0800 (PST)
In-Reply-To: <20170228055141.GB25790@kroah.com>
References: <20170228050530.GA13332@arushi-HP-Pavilion-Notebook> <20170228055141.GB25790@kroah.com>
From: Arushi Singhal <arushisinghal19971997@gmail.com>
Date: Tue, 28 Feb 2017 13:59:53 +0530
Message-ID: <CA+XqjF9B9dNXb0q2aZTeWMuLPSXh4mqi8LYNyxGvp1=vHw3HYQ@mail.gmail.com>
Subject: Re: [PATCH v6] staging: xgifb: correct the multiple line dereference
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: arnaud.patard@rtp-net.org, devel@driverdev.osuosl.org, 
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a114b1f861659420549930059

--001a114b1f861659420549930059
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 28, 2017 at 11:21 AM, Greg Kroah-Hartman <
gregkh@linuxfoundation.org> wrote:

> On Tue, Feb 28, 2017 at 10:35:30AM +0530, Arushi Singhal wrote:
> > Error reported by checkpatch.pl as "avoid multiple line dereference".
> > Addition of new variables to make the code more readable and also to
> > correct about mentioned error as by itroducing new variables line is
> > not exceeding 80 characters.
> >
> > Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> > ---
> > changes in v6
> >   - changes done such that no other errors can generate.
> >   - Improve the coding style.
> >   - Introduced new variables.
> >   - type of the variable is changed.
> >
> >  drivers/staging/xgifb/XGI_main_26.c | 29 ++++++-----------------------
> >  drivers/staging/xgifb/vb_setmode.c  | 17 +++++++++++------
> >  2 files changed, 17 insertions(+), 29 deletions(-)
> >
> > diff --git a/drivers/staging/xgifb/XGI_main_26.c
> b/drivers/staging/xgifb/XGI_main_26.c
> > index 69ed137337ce..9870ea3b76b4 100644
> > --- a/drivers/staging/xgifb/XGI_main_26.c
> > +++ b/drivers/staging/xgifb/XGI_main_26.c
> > @@ -878,30 +878,13 @@ static void XGIfb_post_setmode(struct
> xgifb_video_info *xgifb_info)
> >                       }
> >
> >                       if ((filter >= 0) && (filter <= 7)) {
> > +                             const u8 *f = XGI_TV_filter[filter_tb].
> filter[filter];
> >                               pr_debug("FilterTable[%d]-%d: %*ph\n",
> > -                                      filter_tb, filter,
> > -                                      4, XGI_TV_filter[filter_tb].
> > -                                                filter[filter]);
> > -                             xgifb_reg_set(
> > -                                     XGIPART2,
> > -                                     0x35,
> > -                                     (XGI_TV_filter[filter_tb].
> > -                                             filter[filter][0]));
> > -                             xgifb_reg_set(
> > -                                     XGIPART2,
> > -                                     0x36,
> > -                                     (XGI_TV_filter[filter_tb].
> > -                                             filter[filter][1]));
> > -                             xgifb_reg_set(
> > -                                     XGIPART2,
> > -                                     0x37,
> > -                                     (XGI_TV_filter[filter_tb].
> > -                                             filter[filter][2]));
> > -                             xgifb_reg_set(
> > -                                     XGIPART2,
> > -                                     0x38,
> > -                                     (XGI_TV_filter[filter_tb].
> > -                                             filter[filter][3]));
> > +                                      filter_tb, filter, 4, f);
> > +                             xgifb_reg_set(XGIPART2, 0x35, f[0]);
> > +                             xgifb_reg_set(XGIPART2, 0x36, f[1]);
> > +                             xgifb_reg_set(XGIPART2, 0x37, f[2]);
> > +                             xgifb_reg_set(XGIPART2, 0x38, f[3]);
> >                       }
> >               }
> >       }
> > diff --git a/drivers/staging/xgifb/vb_setmode.c
> b/drivers/staging/xgifb/vb_setmode.c
> > index 7c7c8c8f1df3..249a32804c06 100644
> > --- a/drivers/staging/xgifb/vb_setmode.c
> > +++ b/drivers/staging/xgifb/vb_setmode.c
> > @@ -221,8 +221,11 @@ static unsigned char XGI_AjustCRT2Rate(unsigned
> short ModeIdIndex,
> >
> >       for (; XGI330_RefIndex[RefreshRateTableIndex + (*i)].ModeID ==
> >              tempbx; (*i)--) {
> > -             infoflag = XGI330_RefIndex[RefreshRateTableIndex + (*i)].
> > -                             Ext_InfoFlag;
> > +             unsigned short j;
> > +
> > +             j = XGI330_RefIndex[RefreshRateTableIndex +
> (*i)].Ext_InfoFlag;
> > +             infoflag = j;
> > +
> >               if (infoflag & tempax)
> >                       return 1;
>
>
> Why are you using a temporary variable 'j' here?  It's not needed at
> all, and just is confusing to read the code now, don't you agree?
>
>
I am using temporary variable of small size(character) so that when
I fixed the multiple line dereference then the line number of characters in
a line will
not increase by 80.


> > @@ -231,8 +234,11 @@ static unsigned char XGI_AjustCRT2Rate(unsigned
> short ModeIdIndex,
> >       }0
> >
> >       for ((*i) = 0;; (*i)++) {
> > -             infoflag = XGI330_RefIndex[RefreshRateTableIndex + (*i)].
> > -                             Ext_InfoFlag;
> > +             unsigned short m;
> > +
> > +             m = XGI330_RefIndex[RefreshRateTableIndex +
> (*i)].Ext_InfoFlag;
> > +             infoflag = m;
> > +
> >               if (XGI330_RefIndex[RefreshRateTableIndex + (*i)].ModeID
> >                               != tempbx) {
> >                       return 0;
>
> Same here, why add a new variable that isn't used more than once?  You
> are trying to work around something that doesn't make sense to work
> around.
>
> Same reason as above.
Thanks
Arushi


> Remember, coding style cleanups are to be done to make the code easier
> to understand and follow.  Not to blindly follow a perl script that
> can not think.  Sometimes it is not right...
>
> thanks,
>
> greg k-h
>

--001a114b1f861659420549930059
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+PGJyPjxkaXYgY2xhc3M9ImdtYWlsX2V4dHJhIj48YnI+PGRpdiBjbGFz
cz0iZ21haWxfcXVvdGUiPk9uIFR1ZSwgRmViIDI4LCAyMDE3IGF0IDExOjIxIEFNLCBHcmVnIEty
b2FoLUhhcnRtYW4gPHNwYW4gZGlyPSJsdHIiPiZsdDs8YSBocmVmPSJtYWlsdG86Z3JlZ2toQGxp
bnV4Zm91bmRhdGlvbi5vcmciIHRhcmdldD0iX2JsYW5rIj5ncmVna2hAbGludXhmb3VuZGF0aW9u
Lm9yZzwvYT4mZ3Q7PC9zcGFuPiB3cm90ZTo8YnI+PGJsb2NrcXVvdGUgY2xhc3M9ImdtYWlsX3F1
b3RlIiBzdHlsZT0ibWFyZ2luOjAgMCAwIC44ZXg7Ym9yZGVyLWxlZnQ6MXB4ICNjY2Mgc29saWQ7
cGFkZGluZy1sZWZ0OjFleCI+PGRpdiBjbGFzcz0iSE9FblpiIj48ZGl2IGNsYXNzPSJoNSI+T24g
VHVlLCBGZWIgMjgsIDIwMTcgYXQgMTA6MzU6MzBBTSArMDUzMCwgQXJ1c2hpIFNpbmdoYWwgd3Jv
dGU6PGJyPg0KJmd0OyBFcnJvciByZXBvcnRlZCBieSA8YSBocmVmPSJodHRwOi8vY2hlY2twYXRj
aC5wbCIgcmVsPSJub3JlZmVycmVyIiB0YXJnZXQ9Il9ibGFuayI+Y2hlY2twYXRjaC5wbDwvYT4g
YXMgJnF1b3Q7YXZvaWQgbXVsdGlwbGUgbGluZSBkZXJlZmVyZW5jZSZxdW90Oy48YnI+DQomZ3Q7
IEFkZGl0aW9uIG9mIG5ldyB2YXJpYWJsZXMgdG8gbWFrZSB0aGUgY29kZSBtb3JlIHJlYWRhYmxl
IGFuZCBhbHNvIHRvPGJyPg0KJmd0OyBjb3JyZWN0IGFib3V0IG1lbnRpb25lZCBlcnJvciBhcyBi
eSBpdHJvZHVjaW5nIG5ldyB2YXJpYWJsZXMgbGluZSBpczxicj4NCiZndDsgbm90IGV4Y2VlZGlu
ZyA4MCBjaGFyYWN0ZXJzLjxicj4NCiZndDs8YnI+DQomZ3Q7IFNpZ25lZC1vZmYtYnk6IEFydXNo
aSBTaW5naGFsICZsdDs8YSBocmVmPSJtYWlsdG86YXJ1c2hpc2luZ2hhbDE5OTcxOTk3QGdtYWls
LmNvbSI+YXJ1c2hpc2luZ2hhbDE5OTcxOTk3QGdtYWlsLjx3YnI+Y29tPC9hPiZndDs8YnI+DQom
Z3Q7IC0tLTxicj4NCiZndDsgY2hhbmdlcyBpbiB2Njxicj4NCiZndDvCoCDCoC0gY2hhbmdlcyBk
b25lIHN1Y2ggdGhhdCBubyBvdGhlciBlcnJvcnMgY2FuIGdlbmVyYXRlLjxicj4NCiZndDvCoCDC
oC0gSW1wcm92ZSB0aGUgY29kaW5nIHN0eWxlLjxicj4NCiZndDvCoCDCoC0gSW50cm9kdWNlZCBu
ZXcgdmFyaWFibGVzLjxicj4NCiZndDvCoCDCoC0gdHlwZSBvZiB0aGUgdmFyaWFibGUgaXMgY2hh
bmdlZC48YnI+DQomZ3Q7PGJyPg0KJmd0O8KgIGRyaXZlcnMvc3RhZ2luZy94Z2lmYi9YR0lfPHdi
cj5tYWluXzI2LmMgfCAyOSArKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLTxicj4NCiZndDvC
oCBkcml2ZXJzL3N0YWdpbmcveGdpZmIvdmJfPHdicj5zZXRtb2RlLmPCoCB8IDE3ICsrKysrKysr
KysrLS0tLS0tPGJyPg0KJmd0O8KgIDIgZmlsZXMgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwg
MjkgZGVsZXRpb25zKC0pPGJyPg0KJmd0Ozxicj4NCiZndDsgZGlmZiAtLWdpdCBhL2RyaXZlcnMv
c3RhZ2luZy94Z2lmYi9YR0lfPHdicj5tYWluXzI2LmMgYi9kcml2ZXJzL3N0YWdpbmcveGdpZmIv
WEdJXzx3YnI+bWFpbl8yNi5jPGJyPg0KJmd0OyBpbmRleCA2OWVkMTM3MzM3Y2UuLjk4NzBlYTNi
NzZiNCAxMDA2NDQ8YnI+DQomZ3Q7IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy94Z2lmYi9YR0lfPHdi
cj5tYWluXzI2LmM8YnI+DQomZ3Q7ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy94Z2lmYi9YR0lfPHdi
cj5tYWluXzI2LmM8YnI+DQomZ3Q7IEBAIC04NzgsMzAgKzg3OCwxMyBAQCBzdGF0aWMgdm9pZCBY
R0lmYl9wb3N0X3NldG1vZGUoc3RydWN0IHhnaWZiX3ZpZGVvX2luZm8gKnhnaWZiX2luZm8pPGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgfTxicj4NCiZndDs8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBpZiAoKGZpbHRlciAmZ3Q7
PSAwKSAmYW1wOyZhbXA7IChmaWx0ZXIgJmx0Oz0gNykpIHs8YnI+DQomZ3Q7ICvCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGNvbnN0IHU4ICpmID0gWEdJX1RWX2Zp
bHRlcltmaWx0ZXJfdGJdLjx3YnI+ZmlsdGVyW2ZpbHRlcl07PGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcHJfZGVidWcoJnF1b3Q7RmlsdGVy
VGFibGVbJWRdLSVkOiAlKnBoXG4mcXVvdDssPGJyPg0KJmd0OyAtwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgZmlsdGVyX3RiLCBmaWx0ZXIs
PGJyPg0KJmd0OyAtwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgNCwgWEdJX1RWX2ZpbHRlcltmaWx0ZXJfdGJdLjxicj4NCiZndDsgLcKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIGZpbHRlcltmaWx0ZXJdKTs8YnI+DQomZ3Q7IC3CoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHhnaWZiX3JlZ19zZXQoPGJyPg0KJmd0OyAtwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBYR0lQQVJU
Miw8YnI+DQomZ3Q7IC3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoDB4MzUsPGJyPg0KJmd0OyAtwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAoWEdJX1RWX2ZpbHRlcltmaWx0ZXJfdGJdLjxi
cj4NCiZndDsgLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgZmlsdGVyW2ZpbHRlcl1bMF0pKTs8YnI+DQomZ3Q7IC3CoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHhnaWZiX3JlZ19zZXQoPGJy
Pg0KJmd0OyAtwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqBYR0lQQVJUMiw8YnI+DQomZ3Q7IC3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoDB4MzYsPGJyPg0KJmd0OyAtwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAoWEdJX1RWX2ZpbHRl
cltmaWx0ZXJfdGJdLjxicj4NCiZndDsgLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgZmlsdGVyW2ZpbHRlcl1bMV0pKTs8
YnI+DQomZ3Q7IC3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHhn
aWZiX3JlZ19zZXQoPGJyPg0KJmd0OyAtwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBYR0lQQVJUMiw8YnI+DQomZ3Q7IC3CoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoDB4MzcsPGJyPg0KJmd0
OyAtwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAoWEdJX1RWX2ZpbHRlcltmaWx0ZXJfdGJdLjxicj4NCiZndDsgLcKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgZmlsdGVy
W2ZpbHRlcl1bMl0pKTs8YnI+DQomZ3Q7IC3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoHhnaWZiX3JlZ19zZXQoPGJyPg0KJmd0OyAtwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBYR0lQQVJUMiw8YnI+DQomZ3Q7
IC3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oDB4MzgsPGJyPg0KJmd0OyAtwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAoWEdJX1RWX2ZpbHRlcltmaWx0ZXJfdGJdLjxicj4NCiZndDsgLcKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgZmlsdGVyW2ZpbHRlcl1bM10pKTs8YnI+DQomZ3Q7ICvCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBmaWx0ZXJfdGIsIGZpbHRl
ciwgNCwgZik7PGJyPg0KJmd0OyArwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqB4Z2lmYl9yZWdfc2V0KFhHSVBBUlQyLCAweDM1LCBmWzBdKTs8YnI+DQomZ3Q7ICvC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHhnaWZiX3JlZ19zZXQo
WEdJUEFSVDIsIDB4MzYsIGZbMV0pOzxicj4NCiZndDsgK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgeGdpZmJfcmVnX3NldChYR0lQQVJUMiwgMHgzNywgZlsyXSk7
PGJyPg0KJmd0OyArwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB4
Z2lmYl9yZWdfc2V0KFhHSVBBUlQyLCAweDM4LCBmWzNdKTs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB9PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
fTxicj4NCiZndDvCoCDCoCDCoCDCoH08YnI+DQomZ3Q7IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0
YWdpbmcveGdpZmIvdmJfPHdicj5zZXRtb2RlLmMgYi9kcml2ZXJzL3N0YWdpbmcveGdpZmIvdmJf
PHdicj5zZXRtb2RlLmM8YnI+DQomZ3Q7IGluZGV4IDdjN2M4YzhmMWRmMy4uMjQ5YTMyODA0YzA2
IDEwMDY0NDxicj4NCiZndDsgLS0tIGEvZHJpdmVycy9zdGFnaW5nL3hnaWZiL3ZiXzx3YnI+c2V0
bW9kZS5jPGJyPg0KJmd0OyArKysgYi9kcml2ZXJzL3N0YWdpbmcveGdpZmIvdmJfPHdicj5zZXRt
b2RlLmM8YnI+DQomZ3Q7IEBAIC0yMjEsOCArMjIxLDExIEBAIHN0YXRpYyB1bnNpZ25lZCBjaGFy
IFhHSV9BanVzdENSVDJSYXRlKHVuc2lnbmVkIHNob3J0IE1vZGVJZEluZGV4LDxicj4NCiZndDs8
YnI+DQomZ3Q7wqAgwqAgwqAgwqBmb3IgKDsgWEdJMzMwX1JlZkluZGV4Wzx3YnI+UmVmcmVzaFJh
dGVUYWJsZUluZGV4ICsgKCppKV0uTW9kZUlEID09PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKg
IMKgIHRlbXBieDsgKCppKS0tKSB7PGJyPg0KJmd0OyAtwqAgwqAgwqAgwqAgwqAgwqAgwqBpbmZv
ZmxhZyA9IFhHSTMzMF9SZWZJbmRleFs8d2JyPlJlZnJlc2hSYXRlVGFibGVJbmRleCArICgqaSld
Ljxicj4NCiZndDsgLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
RXh0X0luZm9GbGFnOzxicj4NCiZndDsgK8KgIMKgIMKgIMKgIMKgIMKgIMKgdW5zaWduZWQgc2hv
cnQgajs8YnI+DQomZ3Q7ICs8YnI+DQomZ3Q7ICvCoCDCoCDCoCDCoCDCoCDCoCDCoGogPSBYR0kz
MzBfUmVmSW5kZXhbPHdicj5SZWZyZXNoUmF0ZVRhYmxlSW5kZXggKyAoKmkpXS5FeHRfSW5mb0Zs
YWc7PGJyPg0KJmd0OyArwqAgwqAgwqAgwqAgwqAgwqAgwqBpbmZvZmxhZyA9IGo7PGJyPg0KJmd0
OyArPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgaWYgKGluZm9mbGFnICZhbXA7IHRl
bXBheCk8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqByZXR1cm4g
MTs8YnI+DQo8YnI+DQo8YnI+DQo8L2Rpdj48L2Rpdj5XaHkgYXJlIHlvdSB1c2luZyBhIHRlbXBv
cmFyeSB2YXJpYWJsZSAmIzM5O2omIzM5OyBoZXJlP8KgIEl0JiMzOTtzIG5vdCBuZWVkZWQgYXQ8
YnI+DQphbGwsIGFuZCBqdXN0IGlzIGNvbmZ1c2luZyB0byByZWFkIHRoZSBjb2RlIG5vdywgZG9u
JiMzOTt0IHlvdSBhZ3JlZT88YnI+DQo8c3BhbiBjbGFzcz0iIj48YnI+PC9zcGFuPjwvYmxvY2tx
dW90ZT48ZGl2Pjxicj48L2Rpdj48ZGl2PkkgYW0gdXNpbmcgdGVtcG9yYXJ5IHZhcmlhYmxlIG9m
IHNtYWxsIHNpemUoY2hhcmFjdGVyKSBzbyB0aGF0IHdoZW4gPGJyPkkgZml4ZWQgdGhlIG11bHRp
cGxlIGxpbmUgZGVyZWZlcmVuY2UgdGhlbiB0aGUgbGluZSBudW1iZXIgb2YgY2hhcmFjdGVycyBp
biBhIGxpbmUgd2lsbCA8YnI+bm90IGluY3JlYXNlIGJ5IDgwLjxicj7CoDxicj48L2Rpdj48Ymxv
Y2txdW90ZSBjbGFzcz0iZ21haWxfcXVvdGUiIHN0eWxlPSJtYXJnaW46MCAwIDAgLjhleDtib3Jk
ZXItbGVmdDoxcHggI2NjYyBzb2xpZDtwYWRkaW5nLWxlZnQ6MWV4Ij48c3BhbiBjbGFzcz0iIj4N
CiZndDsgQEAgLTIzMSw4ICsyMzQsMTEgQEAgc3RhdGljIHVuc2lnbmVkIGNoYXIgWEdJX0FqdXN0
Q1JUMlJhdGUodW5zaWduZWQgc2hvcnQgTW9kZUlkSW5kZXgsPGJyPg0KJmd0O8KgIMKgIMKgIMKg
fTA8YnI+DQomZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgZm9yICgoKmkpID0gMDs7ICgqaSkrKykg
ezxicj4NCiZndDsgLcKgIMKgIMKgIMKgIMKgIMKgIMKgaW5mb2ZsYWcgPSBYR0kzMzBfUmVmSW5k
ZXhbPHdicj5SZWZyZXNoUmF0ZVRhYmxlSW5kZXggKyAoKmkpXS48YnI+DQomZ3Q7IC3CoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoEV4dF9JbmZvRmxhZzs8YnI+DQom
Z3Q7ICvCoCDCoCDCoCDCoCDCoCDCoCDCoHVuc2lnbmVkIHNob3J0IG07PGJyPg0KJmd0OyArPGJy
Pg0KJmd0OyArwqAgwqAgwqAgwqAgwqAgwqAgwqBtID0gWEdJMzMwX1JlZkluZGV4Wzx3YnI+UmVm
cmVzaFJhdGVUYWJsZUluZGV4ICsgKCppKV0uRXh0X0luZm9GbGFnOzxicj4NCiZndDsgK8KgIMKg
IMKgIMKgIMKgIMKgIMKgaW5mb2ZsYWcgPSBtOzxicj4NCiZndDsgKzxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoGlmIChYR0kzMzBfUmVmSW5kZXhbPHdicj5SZWZyZXNoUmF0ZVRhYmxl
SW5kZXggKyAoKmkpXS5Nb2RlSUQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAhPSB0ZW1wYngpIHs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqByZXR1cm4gMDs8YnI+DQo8YnI+DQo8L3NwYW4+U2FtZSBoZXJl
LCB3aHkgYWRkIGEgbmV3IHZhcmlhYmxlIHRoYXQgaXNuJiMzOTt0IHVzZWQgbW9yZSB0aGFuIG9u
Y2U/wqAgWW91PGJyPg0KYXJlIHRyeWluZyB0byB3b3JrIGFyb3VuZCBzb21ldGhpbmcgdGhhdCBk
b2VzbiYjMzk7dCBtYWtlIHNlbnNlIHRvIHdvcms8YnI+DQphcm91bmQuPGJyPg0KPGJyPjwvYmxv
Y2txdW90ZT48ZGl2PlNhbWUgcmVhc29uIGFzIGFib3ZlLjxicj48L2Rpdj48ZGl2PlRoYW5rczxi
cj48L2Rpdj48ZGl2PkFydXNoaTxicj7CoDxicj48L2Rpdj48YmxvY2txdW90ZSBjbGFzcz0iZ21h
aWxfcXVvdGUiIHN0eWxlPSJtYXJnaW46MCAwIDAgLjhleDtib3JkZXItbGVmdDoxcHggI2NjYyBz
b2xpZDtwYWRkaW5nLWxlZnQ6MWV4Ij4NClJlbWVtYmVyLCBjb2Rpbmcgc3R5bGUgY2xlYW51cHMg
YXJlIHRvIGJlIGRvbmUgdG8gbWFrZSB0aGUgY29kZSBlYXNpZXI8YnI+DQp0byB1bmRlcnN0YW5k
IGFuZCBmb2xsb3cuwqAgTm90IHRvIGJsaW5kbHkgZm9sbG93IGEgcGVybCBzY3JpcHQgdGhhdDxi
cj4NCmNhbiBub3QgdGhpbmsuwqAgU29tZXRpbWVzIGl0IGlzIG5vdCByaWdodC4uLjxicj4NCjxi
cj4NCnRoYW5rcyw8YnI+DQo8YnI+DQpncmVnIGstaDxicj48L2Jsb2NrcXVvdGU+PGRpdj48YnI+
PGJyPsKgPC9kaXY+PC9kaXY+PGJyPjwvZGl2PjwvZGl2Pg0K
--001a114b1f861659420549930059--

