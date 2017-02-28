X-GM-THRID: 6390824128052461568
X-Received: by 10.28.17.11 with SMTP id 11mr51067wmr.9.1488276971258;
        Tue, 28 Feb 2017 02:16:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.80.23 with SMTP id e23ls64437ljb.28.gmail; Tue, 28 Feb 2017
 02:16:10 -0800 (PST)
X-Received: by 10.46.80.82 with SMTP id v18mr186597ljd.27.1488276970115;
        Tue, 28 Feb 2017 02:16:10 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-lf0-x241.google.com (mail-lf0-x241.google.com. [2a00:1450:4010:c07::241])
        by gmr-mx.google.com with ESMTPS id 14si124898wmn.2.2017.02.28.02.16.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 02:16:10 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) client-ip=2a00:1450:4010:c07::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x241.google.com with SMTP id a198so626432lfb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Feb 2017 02:16:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=Ke8/hI40y2+tDMhLDtdAF0DJuIA+pVAJen2SVW1z1A0=;
        b=tq9DTPquw8McpsavP/G5M7AWrGloEg7y4atLbuuSHzxXMlXTgdaecmHbhBdeyofTiP
         bpFXQgI5Vu+Rbnfm2BNH/sSdpWvb4E8BoGupI4No5hcpCGgOLbwb2IA+MEr6KaywR4Gu
         gWZn9iRuNSJyUdr+0mw+6XgbZGSr94VEecM1NT1D2z6G7LTWJEoWBdc26k9aREPcGYN8
         cm8KdUD+X/gXt7yDfb25elxFvClJ+oVHbkuw9pUuiyghIzz1ctOXo5FHwj4iNJ52cuNF
         Waxyp8PRgzrP54XhvEIqXhFKp//cUbDlOwKDHXl+qxS30WDZftpDYyLOtgWVSVJzVKN5
         f5DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=Ke8/hI40y2+tDMhLDtdAF0DJuIA+pVAJen2SVW1z1A0=;
        b=T35wOvdaTfFPNxBuj/cr3t3crKVqX6aaMrVhhkth9nzMXKCdWs+6k28YltFoYwUPne
         LZzDI/+9n8d/8x1HJUxDMOS0SEe+2ipOkR7x9Bnhn6BlqUlCEK7WRtA7Ggy0jhH+1oXK
         cqQLkzQKPyTAROhoGFurIYCQrq2CRKRCgk2WhP8NgXaHXNpYIK1D4uD9gRymL3RmBZ2w
         PoV+B8uQfg8ONJ9w4asQ/aBtvpm5mGHZqFKU97YlzyGKFAEHvlY/Zw7bfZYZOfHowgPT
         CedZ6dPIgvOgkukYH1fkOre4GbAzf/cDjWy988ebGCPjOmKdAW0FU7vXwF7+Jj83YEt7
         K6YQ==
X-Gm-Message-State: AMke39mfOHVp9irh7WU9pbSFHU6USnRMbr3+Y/NgmBOq1+JjZO0P/Nii2WowZL2gRAYND7BCifpCskHpWDZc9w==
X-Received: by 10.46.84.73 with SMTP id y9mr562616ljd.6.1488276969503; Tue, 28
 Feb 2017 02:16:09 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.151.142 with HTTP; Tue, 28 Feb 2017 02:16:08 -0800 (PST)
In-Reply-To: <20170228093707.GA3458@kroah.com>
References: <20170228050530.GA13332@arushi-HP-Pavilion-Notebook>
 <20170228055141.GB25790@kroah.com> <CA+XqjF9B9dNXb0q2aZTeWMuLPSXh4mqi8LYNyxGvp1=vHw3HYQ@mail.gmail.com>
 <20170228093707.GA3458@kroah.com>
From: Arushi Singhal <arushisinghal19971997@gmail.com>
Date: Tue, 28 Feb 2017 15:46:08 +0530
Message-ID: <CA+XqjF-AfgFsh753h+FTDU-q0X-XHa_iwEWbY1W=A1JD7Lxa5Q@mail.gmail.com>
Subject: Re: [PATCH v6] staging: xgifb: correct the multiple line dereference
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: arnaud.patard@rtp-net.org, devel@driverdev.osuosl.org, 
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=f403045fb4f81842a20549947c39

--f403045fb4f81842a20549947c39
Content-Type: text/plain; charset=UTF-8

Thanks Julia, Greg and Joe for always making it clear where I going wrong
and guiding me.
Thanks
Arushi

On Tue, Feb 28, 2017 at 3:07 PM, Greg Kroah-Hartman <
gregkh@linuxfoundation.org> wrote:

> On Tue, Feb 28, 2017 at 01:59:53PM +0530, Arushi Singhal wrote:
>
> Please fix your email client to not send html mail, otherwise the
> mailing lists reject them, and your quoting is all messed up :(
>
> > On Tue, Feb 28, 2017 at 11:21 AM, Greg Kroah-Hartman <
> > gregkh@linuxfoundation.org> wrote:
> >
> >     On Tue, Feb 28, 2017 at 10:35:30AM +0530, Arushi Singhal wrote:
> >     > Error reported by checkpatch.pl as "avoid multiple line
> dereference".
> >     > Addition of new variables to make the code more readable and also
> to
> >     > correct about mentioned error as by itroducing new variables line
> is
> >     > not exceeding 80 characters.
> >     >
> >     > Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> >     > ---
> >     > changes in v6
> >     >   - changes done such that no other errors can generate.
> >     >   - Improve the coding style.
> >     >   - Introduced new variables.
> >     >   - type of the variable is changed.
> >     >
> >     >  drivers/staging/xgifb/XGI_main_26.c | 29
> ++++++-----------------------
> >     >  drivers/staging/xgifb/vb_setmode.c  | 17 +++++++++++------
> >     >  2 files changed, 17 insertions(+), 29 deletions(-)
> >     >
> >     > diff --git a/drivers/staging/xgifb/XGI_main_26.c
> b/drivers/staging/xgifb/
> >     XGI_main_26.c
> >     > index 69ed137337ce..9870ea3b76b4 100644
> >     > --- a/drivers/staging/xgifb/XGI_main_26.c
> >     > +++ b/drivers/staging/xgifb/XGI_main_26.c
> >     > @@ -878,30 +878,13 @@ static void XGIfb_post_setmode(struct
> >     xgifb_video_info *xgifb_info)
> >     >                       }
> >     >
> >     >                       if ((filter >= 0) && (filter <= 7)) {
> >     > +                             const u8 *f =
> XGI_TV_filter[filter_tb].
> >     filter[filter];
> >     >                               pr_debug("FilterTable[%d]-%d:
> %*ph\n",
> >     > -                                      filter_tb, filter,
> >     > -                                      4, XGI_TV_filter[filter_tb].
> >     > -                                                filter[filter]);
> >     > -                             xgifb_reg_set(
> >     > -                                     XGIPART2,
> >     > -                                     0x35,
> >     > -                                     (XGI_TV_filter[filter_tb].
> >     > -                                             filter[filter][0]));
> >     > -                             xgifb_reg_set(
> >     > -                                     XGIPART2,
> >     > -                                     0x36,
> >     > -                                     (XGI_TV_filter[filter_tb].
> >     > -                                             filter[filter][1]));
> >     > -                             xgifb_reg_set(
> >     > -                                     XGIPART2,
> >     > -                                     0x37,
> >     > -                                     (XGI_TV_filter[filter_tb].
> >     > -                                             filter[filter][2]));
> >     > -                             xgifb_reg_set(
> >     > -                                     XGIPART2,
> >     > -                                     0x38,
> >     > -                                     (XGI_TV_filter[filter_tb].
> >     > -                                             filter[filter][3]));
> >     > +                                      filter_tb, filter, 4, f);
> >     > +                             xgifb_reg_set(XGIPART2, 0x35, f[0]);
> >     > +                             xgifb_reg_set(XGIPART2, 0x36, f[1]);
> >     > +                             xgifb_reg_set(XGIPART2, 0x37, f[2]);
> >     > +                             xgifb_reg_set(XGIPART2, 0x38, f[3]);
> >     >                       }
> >     >               }
> >     >       }
> >     > diff --git a/drivers/staging/xgifb/vb_setmode.c
> b/drivers/staging/xgifb/
> >     vb_setmode.c
> >     > index 7c7c8c8f1df3..249a32804c06 100644
> >     > --- a/drivers/staging/xgifb/vb_setmode.c
> >     > +++ b/drivers/staging/xgifb/vb_setmode.c
> >     > @@ -221,8 +221,11 @@ static unsigned char
> XGI_AjustCRT2Rate(unsigned
> >     short ModeIdIndex,
> >     >
> >     >       for (; XGI330_RefIndex[RefreshRateTableIndex + (*i)].ModeID
> ==
> >     >              tempbx; (*i)--) {
> >     > -             infoflag = XGI330_RefIndex[RefreshRateTableIndex +
> (*i)].
> >     > -                             Ext_InfoFlag;
> >     > +             unsigned short j;
> >     > +
> >     > +             j = XGI330_RefIndex[RefreshRateTableIndex +
> >     (*i)].Ext_InfoFlag;
> >     > +             infoflag = j;
> >     > +
> >     >               if (infoflag & tempax)
> >     >                       return 1;
> >
> >
> >     Why are you using a temporary variable 'j' here?  It's not needed at
> >     all, and just is confusing to read the code now, don't you agree?
> >
> > I am using temporary variable of small size(character) so that when
> > I fixed the multiple line dereference then the line number of characters
> in a
> > line will not increase by 80.
>
> I know _why_ you are doing it, sorry, the point is that it makes no
> sense at all to _do_ that.  Please don't just blindly make random code
> changes to shut the checkpatch.pl script up.  You have to think, and use
> it as a guide.
>
> Remember, coding style changes are to be made to make the code easier to
> read and understand by humans, not to quite a random perl script's
> output.
>
> thanks,
>
> greg k-h
>

--f403045fb4f81842a20549947c39
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+PGRpdj48ZGl2PjxkaXY+VGhhbmtzIEp1bGlhLCBHcmVnIGFuZCBKb2Ug
Zm9yIGFsd2F5cyBtYWtpbmcgaXQgY2xlYXIgd2hlcmUgSSBnb2luZyB3cm9uZzxicj48L2Rpdj5h
bmQgZ3VpZGluZyBtZS48YnI+PC9kaXY+VGhhbmtzPGJyPjwvZGl2PkFydXNoaTxicj48L2Rpdj48
ZGl2IGNsYXNzPSJnbWFpbF9leHRyYSI+PGJyPjxkaXYgY2xhc3M9ImdtYWlsX3F1b3RlIj5PbiBU
dWUsIEZlYiAyOCwgMjAxNyBhdCAzOjA3IFBNLCBHcmVnIEtyb2FoLUhhcnRtYW4gPHNwYW4gZGly
PSJsdHIiPiZsdDs8YSBocmVmPSJtYWlsdG86Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmciIHRh
cmdldD0iX2JsYW5rIj5ncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZzwvYT4mZ3Q7PC9zcGFuPiB3
cm90ZTo8YnI+PGJsb2NrcXVvdGUgY2xhc3M9ImdtYWlsX3F1b3RlIiBzdHlsZT0ibWFyZ2luOjAg
MCAwIC44ZXg7Ym9yZGVyLWxlZnQ6MXB4ICNjY2Mgc29saWQ7cGFkZGluZy1sZWZ0OjFleCI+T24g
VHVlLCBGZWIgMjgsIDIwMTcgYXQgMDE6NTk6NTNQTSArMDUzMCwgQXJ1c2hpIFNpbmdoYWwgd3Jv
dGU6PGJyPg0KPGJyPg0KUGxlYXNlIGZpeCB5b3VyIGVtYWlsIGNsaWVudCB0byBub3Qgc2VuZCBo
dG1sIG1haWwsIG90aGVyd2lzZSB0aGU8YnI+DQptYWlsaW5nIGxpc3RzIHJlamVjdCB0aGVtLCBh
bmQgeW91ciBxdW90aW5nIGlzIGFsbCBtZXNzZWQgdXAgOig8YnI+DQo8ZGl2PjxkaXYgY2xhc3M9
Img1Ij48YnI+DQomZ3Q7IE9uIFR1ZSwgRmViIDI4LCAyMDE3IGF0IDExOjIxIEFNLCBHcmVnIEty
b2FoLUhhcnRtYW4gJmx0Ozxicj4NCiZndDsgPGEgaHJlZj0ibWFpbHRvOmdyZWdraEBsaW51eGZv
dW5kYXRpb24ub3JnIj5ncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZzwvYT4mZ3Q7IHdyb3RlOjxi
cj4NCiZndDs8YnI+DQomZ3Q7wqAgwqAgwqBPbiBUdWUsIEZlYiAyOCwgMjAxNyBhdCAxMDozNToz
MEFNICswNTMwLCBBcnVzaGkgU2luZ2hhbCB3cm90ZTo8YnI+DQomZ3Q7wqAgwqAgwqAmZ3Q7IEVy
cm9yIHJlcG9ydGVkIGJ5IDxhIGhyZWY9Imh0dHA6Ly9jaGVja3BhdGNoLnBsIiByZWw9Im5vcmVm
ZXJyZXIiIHRhcmdldD0iX2JsYW5rIj5jaGVja3BhdGNoLnBsPC9hPiBhcyAmcXVvdDthdm9pZCBt
dWx0aXBsZSBsaW5lIGRlcmVmZXJlbmNlJnF1b3Q7Ljxicj4NCiZndDvCoCDCoCDCoCZndDsgQWRk
aXRpb24gb2YgbmV3IHZhcmlhYmxlcyB0byBtYWtlIHRoZSBjb2RlIG1vcmUgcmVhZGFibGUgYW5k
IGFsc28gdG88YnI+DQomZ3Q7wqAgwqAgwqAmZ3Q7IGNvcnJlY3QgYWJvdXQgbWVudGlvbmVkIGVy
cm9yIGFzIGJ5IGl0cm9kdWNpbmcgbmV3IHZhcmlhYmxlcyBsaW5lIGlzPGJyPg0KJmd0O8KgIMKg
IMKgJmd0OyBub3QgZXhjZWVkaW5nIDgwIGNoYXJhY3RlcnMuPGJyPg0KJmd0O8KgIMKgIMKgJmd0
Ozxicj4NCiZndDvCoCDCoCDCoCZndDsgU2lnbmVkLW9mZi1ieTogQXJ1c2hpIFNpbmdoYWwgJmx0
OzxhIGhyZWY9Im1haWx0bzphcnVzaGlzaW5naGFsMTk5NzE5OTdAZ21haWwuY29tIj5hcnVzaGlz
aW5naGFsMTk5NzE5OTdAZ21haWwuPHdicj5jb208L2E+Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCZn
dDsgLS0tPGJyPg0KJmd0O8KgIMKgIMKgJmd0OyBjaGFuZ2VzIGluIHY2PGJyPg0KJmd0O8KgIMKg
IMKgJmd0O8KgIMKgLSBjaGFuZ2VzIGRvbmUgc3VjaCB0aGF0IG5vIG90aGVyIGVycm9ycyBjYW4g
Z2VuZXJhdGUuPGJyPg0KJmd0O8KgIMKgIMKgJmd0O8KgIMKgLSBJbXByb3ZlIHRoZSBjb2Rpbmcg
c3R5bGUuPGJyPg0KJmd0O8KgIMKgIMKgJmd0O8KgIMKgLSBJbnRyb2R1Y2VkIG5ldyB2YXJpYWJs
ZXMuPGJyPg0KJmd0O8KgIMKgIMKgJmd0O8KgIMKgLSB0eXBlIG9mIHRoZSB2YXJpYWJsZSBpcyBj
aGFuZ2VkLjxicj4NCiZndDvCoCDCoCDCoCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAmZ3Q7wqAgZHJp
dmVycy9zdGFnaW5nL3hnaWZiL1hHSV88d2JyPm1haW5fMjYuYyB8IDI5ICsrKysrKy0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tPGJyPg0KJmd0O8KgIMKgIMKgJmd0O8KgIGRyaXZlcnMvc3RhZ2luZy94
Z2lmYi92Yl88d2JyPnNldG1vZGUuY8KgIHwgMTcgKysrKysrKysrKystLS0tLS08YnI+DQomZ3Q7
wqAgwqAgwqAmZ3Q7wqAgMiBmaWxlcyBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspLCAyOSBkZWxl
dGlvbnMoLSk8YnI+DQomZ3Q7wqAgwqAgwqAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgJmd0OyBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3hnaWZiL1hHSV88d2JyPm1haW5fMjYuYyBiL2RyaXZl
cnMvc3RhZ2luZy94Z2lmYi88YnI+DQomZ3Q7wqAgwqAgwqBYR0lfbWFpbl8yNi5jPGJyPg0KJmd0
O8KgIMKgIMKgJmd0OyBpbmRleCA2OWVkMTM3MzM3Y2UuLjk4NzBlYTNiNzZiNCAxMDA2NDQ8YnI+
DQomZ3Q7wqAgwqAgwqAmZ3Q7IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy94Z2lmYi9YR0lfPHdicj5t
YWluXzI2LmM8YnI+DQomZ3Q7wqAgwqAgwqAmZ3Q7ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy94Z2lm
Yi9YR0lfPHdicj5tYWluXzI2LmM8YnI+DQomZ3Q7wqAgwqAgwqAmZ3Q7IEBAIC04NzgsMzAgKzg3
OCwxMyBAQCBzdGF0aWMgdm9pZCBYR0lmYl9wb3N0X3NldG1vZGUoc3RydWN0PGJyPg0KJmd0O8Kg
IMKgIMKgeGdpZmJfdmlkZW9faW5mbyAqeGdpZmJfaW5mbyk8YnI+DQomZ3Q7wqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB9PGJyPg0KJmd0O8KgIMKgIMKgJmd0
Ozxicj4NCiZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oGlmICgoZmlsdGVyICZndDs9IDApICZhbXA7JmFtcDsgKGZpbHRlciAmbHQ7PSA3KSkgezxicj4N
CiZndDvCoCDCoCDCoCZndDsgK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgY29uc3QgdTggKmYgPSBYR0lfVFZfZmlsdGVyW2ZpbHRlcl90Yl0uPGJyPg0KJmd0O8Kg
IMKgIMKgZmlsdGVyW2ZpbHRlcl07PGJyPg0KJmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcHJfZGVidWcoJnF1b3Q7RmlsdGVyVGFi
bGVbJWRdLSVkOiAlKnBoXG4mcXVvdDssPGJyPg0KJmd0O8KgIMKgIMKgJmd0OyAtwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgZmlsdGVyX3Ri
LCBmaWx0ZXIsPGJyPg0KJmd0O8KgIMKgIMKgJmd0OyAtwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgNCwgWEdJX1RWX2ZpbHRlcltmaWx0ZXJf
dGJdLjxicj4NCiZndDvCoCDCoCDCoCZndDsgLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIGZpbHRlcltmaWx0ZXJd
KTs8YnI+DQomZ3Q7wqAgwqAgwqAmZ3Q7IC3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoHhnaWZiX3JlZ19zZXQoPGJyPg0KJmd0O8KgIMKgIMKgJmd0OyAtwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBYR0lQQVJU
Miw8YnI+DQomZ3Q7wqAgwqAgwqAmZ3Q7IC3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoDB4MzUsPGJyPg0KJmd0O8KgIMKgIMKgJmd0OyAtwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAoWEdJ
X1RWX2ZpbHRlcltmaWx0ZXJfdGJdLjxicj4NCiZndDvCoCDCoCDCoCZndDsgLcKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
ZmlsdGVyW2ZpbHRlcl1bMF0pKTs8YnI+DQomZ3Q7wqAgwqAgwqAmZ3Q7IC3CoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHhnaWZiX3JlZ19zZXQoPGJyPg0KJmd0O8Kg
IMKgIMKgJmd0OyAtwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqBYR0lQQVJUMiw8YnI+DQomZ3Q7wqAgwqAgwqAmZ3Q7IC3CoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoDB4MzYsPGJyPg0KJmd0
O8KgIMKgIMKgJmd0OyAtwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAoWEdJX1RWX2ZpbHRlcltmaWx0ZXJfdGJdLjxicj4NCiZndDvCoCDCoCDC
oCZndDsgLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgZmlsdGVyW2ZpbHRlcl1bMV0pKTs8YnI+DQomZ3Q7wqAgwqAgwqAm
Z3Q7IC3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHhnaWZiX3Jl
Z19zZXQoPGJyPg0KJmd0O8KgIMKgIMKgJmd0OyAtwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBYR0lQQVJUMiw8YnI+DQomZ3Q7wqAgwqAgwqAm
Z3Q7IC3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoDB4MzcsPGJyPg0KJmd0O8KgIMKgIMKgJmd0OyAtwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAoWEdJX1RWX2ZpbHRlcltmaWx0ZXJfdGJd
Ljxicj4NCiZndDvCoCDCoCDCoCZndDsgLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgZmlsdGVyW2ZpbHRlcl1bMl0pKTs8
YnI+DQomZ3Q7wqAgwqAgwqAmZ3Q7IC3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoHhnaWZiX3JlZ19zZXQoPGJyPg0KJmd0O8KgIMKgIMKgJmd0OyAtwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBYR0lQQVJUMiw8
YnI+DQomZ3Q7wqAgwqAgwqAmZ3Q7IC3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoDB4MzgsPGJyPg0KJmd0O8KgIMKgIMKgJmd0OyAtwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAoWEdJX1RW
X2ZpbHRlcltmaWx0ZXJfdGJdLjxicj4NCiZndDvCoCDCoCDCoCZndDsgLcKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgZmls
dGVyW2ZpbHRlcl1bM10pKTs8YnI+DQomZ3Q7wqAgwqAgwqAmZ3Q7ICvCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBmaWx0ZXJfdGIsIGZpbHRl
ciwgNCwgZik7PGJyPg0KJmd0O8KgIMKgIMKgJmd0OyArwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqB4Z2lmYl9yZWdfc2V0KFhHSVBBUlQyLCAweDM1LCBmWzBdKTs8
YnI+DQomZ3Q7wqAgwqAgwqAmZ3Q7ICvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoHhnaWZiX3JlZ19zZXQoWEdJUEFSVDIsIDB4MzYsIGZbMV0pOzxicj4NCiZndDvC
oCDCoCDCoCZndDsgK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
eGdpZmJfcmVnX3NldChYR0lQQVJUMiwgMHgzNywgZlsyXSk7PGJyPg0KJmd0O8KgIMKgIMKgJmd0
OyArwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB4Z2lmYl9yZWdf
c2V0KFhHSVBBUlQyLCAweDM4LCBmWzNdKTs8YnI+DQomZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB9PGJyPg0KJmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgfTxicj4NCiZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoH08YnI+DQom
Z3Q7wqAgwqAgwqAmZ3Q7IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcveGdpZmIvdmJfPHdi
cj5zZXRtb2RlLmMgYi9kcml2ZXJzL3N0YWdpbmcveGdpZmIvPGJyPg0KJmd0O8KgIMKgIMKgdmJf
c2V0bW9kZS5jPGJyPg0KJmd0O8KgIMKgIMKgJmd0OyBpbmRleCA3YzdjOGM4ZjFkZjMuLjI0OWEz
MjgwNGMwNiAxMDA2NDQ8YnI+DQomZ3Q7wqAgwqAgwqAmZ3Q7IC0tLSBhL2RyaXZlcnMvc3RhZ2lu
Zy94Z2lmYi92Yl88d2JyPnNldG1vZGUuYzxicj4NCiZndDvCoCDCoCDCoCZndDsgKysrIGIvZHJp
dmVycy9zdGFnaW5nL3hnaWZiL3ZiXzx3YnI+c2V0bW9kZS5jPGJyPg0KJmd0O8KgIMKgIMKgJmd0
OyBAQCAtMjIxLDggKzIyMSwxMSBAQCBzdGF0aWMgdW5zaWduZWQgY2hhciBYR0lfQWp1c3RDUlQy
UmF0ZSh1bnNpZ25lZDxicj4NCiZndDvCoCDCoCDCoHNob3J0IE1vZGVJZEluZGV4LDxicj4NCiZn
dDvCoCDCoCDCoCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqBmb3IgKDsgWEdJ
MzMwX1JlZkluZGV4Wzx3YnI+UmVmcmVzaFJhdGVUYWJsZUluZGV4ICsgKCppKV0uTW9kZUlEID09
PGJyPg0KJmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIHRlbXBieDsgKCppKS0t
KSB7PGJyPg0KJmd0O8KgIMKgIMKgJmd0OyAtwqAgwqAgwqAgwqAgwqAgwqAgwqBpbmZvZmxhZyA9
IFhHSTMzMF9SZWZJbmRleFs8d2JyPlJlZnJlc2hSYXRlVGFibGVJbmRleCArICgqaSldLjxicj4N
CiZndDvCoCDCoCDCoCZndDsgLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgRXh0X0luZm9GbGFnOzxicj4NCiZndDvCoCDCoCDCoCZndDsgK8KgIMKgIMKgIMKgIMKg
IMKgIMKgdW5zaWduZWQgc2hvcnQgajs8YnI+DQomZ3Q7wqAgwqAgwqAmZ3Q7ICs8YnI+DQomZ3Q7
wqAgwqAgwqAmZ3Q7ICvCoCDCoCDCoCDCoCDCoCDCoCDCoGogPSBYR0kzMzBfUmVmSW5kZXhbPHdi
cj5SZWZyZXNoUmF0ZVRhYmxlSW5kZXggKzxicj4NCiZndDvCoCDCoCDCoCgqaSldLkV4dF9JbmZv
RmxhZzs8YnI+DQomZ3Q7wqAgwqAgwqAmZ3Q7ICvCoCDCoCDCoCDCoCDCoCDCoCDCoGluZm9mbGFn
ID0gajs8YnI+DQomZ3Q7wqAgwqAgwqAmZ3Q7ICs8YnI+DQomZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqBpZiAoaW5mb2ZsYWcgJmFtcDsgdGVtcGF4KTxicj4NCiZndDvCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHJldHVybiAxOzxicj4N
CiZndDs8YnI+DQomZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgV2h5IGFyZSB5b3UgdXNpbmcgYSB0ZW1w
b3JhcnkgdmFyaWFibGUgJiMzOTtqJiMzOTsgaGVyZT/CoCBJdCYjMzk7cyBub3QgbmVlZGVkIGF0
PGJyPg0KJmd0O8KgIMKgIMKgYWxsLCBhbmQganVzdCBpcyBjb25mdXNpbmcgdG8gcmVhZCB0aGUg
Y29kZSBub3csIGRvbiYjMzk7dCB5b3UgYWdyZWU/PGJyPg0KJmd0Ozxicj4NCiZndDsgSSBhbSB1
c2luZyB0ZW1wb3JhcnkgdmFyaWFibGUgb2Ygc21hbGwgc2l6ZShjaGFyYWN0ZXIpIHNvIHRoYXQg
d2hlbjxicj4NCiZndDsgSSBmaXhlZCB0aGUgbXVsdGlwbGUgbGluZSBkZXJlZmVyZW5jZSB0aGVu
IHRoZSBsaW5lIG51bWJlciBvZiBjaGFyYWN0ZXJzIGluIGE8YnI+DQomZ3Q7IGxpbmUgd2lsbCBu
b3QgaW5jcmVhc2UgYnkgODAuPGJyPg0KPGJyPg0KPC9kaXY+PC9kaXY+SSBrbm93IF93aHlfIHlv
dSBhcmUgZG9pbmcgaXQsIHNvcnJ5LCB0aGUgcG9pbnQgaXMgdGhhdCBpdCBtYWtlcyBubzxicj4N
CnNlbnNlIGF0IGFsbCB0byBfZG9fIHRoYXQuwqAgUGxlYXNlIGRvbiYjMzk7dCBqdXN0IGJsaW5k
bHkgbWFrZSByYW5kb20gY29kZTxicj4NCmNoYW5nZXMgdG8gc2h1dCB0aGUgPGEgaHJlZj0iaHR0
cDovL2NoZWNrcGF0Y2gucGwiIHJlbD0ibm9yZWZlcnJlciIgdGFyZ2V0PSJfYmxhbmsiPmNoZWNr
cGF0Y2gucGw8L2E+IHNjcmlwdCB1cC7CoCBZb3UgaGF2ZSB0byB0aGluaywgYW5kIHVzZTxicj4N
Cml0IGFzIGEgZ3VpZGUuPGJyPg0KPGJyPg0KUmVtZW1iZXIsIGNvZGluZyBzdHlsZSBjaGFuZ2Vz
IGFyZSB0byBiZSBtYWRlIHRvIG1ha2UgdGhlIGNvZGUgZWFzaWVyIHRvPGJyPg0KcmVhZCBhbmQg
dW5kZXJzdGFuZCBieSBodW1hbnMsIG5vdCB0byBxdWl0ZSBhIHJhbmRvbSBwZXJsIHNjcmlwdCYj
Mzk7czxicj4NCm91dHB1dC48YnI+DQo8YnI+DQp0aGFua3MsPGJyPg0KPGJyPg0KZ3JlZyBrLWg8
YnI+DQo8L2Jsb2NrcXVvdGU+PC9kaXY+PGJyPjwvZGl2Pg0K
--f403045fb4f81842a20549947c39--

