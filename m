X-GM-THRID: 7022901752311578624
X-Received: by 2002:a05:6808:bc6:: with SMTP id o6mr27980502oik.33.1635258646517;
        Tue, 26 Oct 2021 07:30:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:2309:: with SMTP id e9ls5714736oie.10.gmail; Tue, 26 Oct
 2021 07:30:45 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwfAmrbl552+au2c+Uj+lMTysoLf58R4g2C73M2RiA+3GoM5AO3+WLfH02/1M8kyDUjNDzJ
X-Received: by 2002:a05:6808:2389:: with SMTP id bp9mr28522753oib.140.1635258645680;
        Tue, 26 Oct 2021 07:30:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635258645; cv=none;
        d=google.com; s=arc-20160816;
        b=qblg6kRSqeVZqjKuJ4jQJDZmGua9I08FlxQNChcxvWT972USI7vExOKObf4XulMWkE
         AFACrwg5JxbCX7f2TTlZOj3+f7n89A1lZQbct4YkhQpPe3F61zOp6Ex7mSXS7mbx8kY9
         ZmZyG9b1ZY2yCTaymR+DQ9CbBLE4nVFzvw5WvGqE8ALvGwEfk8LW9JXsob8qvxwtXm62
         xTqVKxvmj40IDOkqW+rT72lkp0WARFvW7KAOVnkMEMnfmcI2utkAP3G6YhjgKzxxLd1j
         WG8fAS20gNPwDQBw1Lldypwo7v/XkwmJsLP4/5i0FZ2gXwS777K9fAM2xigVQVHG4cMs
         Z4OA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=u8NzT7M0mcMX2Y6Ett9B1/dFS8R8g/7krjiEsrZ0Zkc=;
        b=07xpI3fAlx9KZSF1P1fYSnpWJgOTbYeYWvg+qlJiQEI423Y93mXBPZYEOqTlytiSvG
         ysJTl20dgKgOB1H6Eh0Y31y8rTx0AyokKxBmIO0A0XtPSvxtxA+ztAGoK5VePf+KAhLD
         0WZT/J5pJdF4BhPpEr8+O+8Qr6ak6v8qtnKqPtJbngDNwlpEqvZufKPKuHBBDnQNpCBV
         QVpi0n1QeVJHR51HrxFyynWuob6N8DeVtzUYZxs7kUYvDVUpL3ZOtBqae2IHO7iFdiuy
         90DfyN2nM+6YAZdkD5IQwcSd4qumjXT95t4TCZ/pPunrD8VdC2hjS39nH9wrGF+PiAtb
         eFew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=UdgThzd8;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::82c as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kushalkothari285@gmail.com>
Received: from mail-qt1-x82c.google.com (mail-qt1-x82c.google.com. [2607:f8b0:4864:20::82c])
        by gmr-mx.google.com with ESMTPS id v21si1849516oto.0.2021.10.26.07.30.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Oct 2021 07:30:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::82c as permitted sender) client-ip=2607:f8b0:4864:20::82c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=UdgThzd8;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::82c as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x82c.google.com with SMTP id y11so13617918qtn.13
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Oct 2021 07:30:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=u8NzT7M0mcMX2Y6Ett9B1/dFS8R8g/7krjiEsrZ0Zkc=;
        b=UdgThzd8rahw0WX6rSUPr0i3CVyY23r36Vg9kOgJKyqZq1Gq8Qk2yS+A2bIRyLy9z9
         9+wIjNWprfEhyfWD6lqMWQC9kx91DNhPY9FFvJEg+Kkcvltja3ymF5UxqqhWSqDKKDT+
         +F4qmkeUvmbq6gXm2hXUusCAlEb+bfRb72aqvlLZvsqyVevbMsH8ZRxcKrlCFysA3ZxB
         8j+mhC4FtXTmjEOUq3maXYlFo1WePLzrtYDHFluhX0pIKbLnc39gIdgYxys9ySgEcr0e
         EWXTA4gHxNZYrzwVc87XNALIqitE2EhtVsJHLSokUlpHnHW0alD/PoNIFDh+jvPtwJkd
         s4CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=u8NzT7M0mcMX2Y6Ett9B1/dFS8R8g/7krjiEsrZ0Zkc=;
        b=V9JfnVNqvBQMSj1ji39Et2bZ/JAo1rW045DMLrgL2cdubYpugpnq5CsH6ZnZdALSjR
         PsC2u/IOykVJKJ3LyVYJSBL9QDNB03WONS27O4o/e7spTb+Or4s+wrfhj0cdWR/1p/WH
         d8/uh5vZ758/UtD2o6pfOe9l9LBx/brJm2l49mNJqSBGn/QaAHDmfJmj6Be+65Frasr+
         3KRBTClUE8hGUT/T8q2+JGbcH3Blk+Ndq5OcIIQDIpQIgKHdZ3i0b/EV9BJoSK9nQMcy
         bYYJeozzZKD3qSveWT0mbtX87dvINnyfhwE4jlk6w0Gqr2QMbMterAjrVDePAtOL2YV2
         UiXw==
X-Gm-Message-State: AOAM531IGJgUwV+3D+CphdApkNbiC8W484pQ38tWjkUrhxPV4UZUEaoJ
	lsPbZEvUKA2iDUJa6IKVR34CovXjJt3Tfcy0Ze0=
X-Received: by 2002:ac8:58c6:: with SMTP id u6mr25337694qta.230.1635258645128;
 Tue, 26 Oct 2021 07:30:45 -0700 (PDT)
MIME-Version: 1.0
References: <20211026134253.7868-1-kushalkothari285@gmail.com> <84add494-6e39-cdd9-96c6-04a0245ae11c@gmail.com>
In-Reply-To: <84add494-6e39-cdd9-96c6-04a0245ae11c@gmail.com>
From: kushal kothari <kushalkothari285@gmail.com>
Date: Tue, 26 Oct 2021 20:00:33 +0530
Message-ID: <CALtHPQsh=0LyM3K9dn8d0X+n4gbx2TApF6k_WhpypHXGj6Hj-w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8723bs: core: Refactor
 nested if-else
To: Praveen Kumar <kpraveen.lkml@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, fabioaiuto83@gmail.com, 
	ross.schm.dev@gmail.com, hdegoede@redhat.com, marcocesati@gmail.com, 
	"Fabio M. De Francesco" <fmdefrancesco@gmail.com>, linux-staging@lists.linux.dev, 
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com, 
	Mike Rapoport <mike.rapoport@gmail.com>, kushalkothari2850@gmail.com
Content-Type: multipart/alternative; boundary="000000000000a8a9a905cf425265"

--000000000000a8a9a905cf425265
Content-Type: text/plain; charset="UTF-8"

>Can you please check if this works well. Thanks.

 checkpatch.pl again warns of
"WARNING: Too many leading tabs - consider code refactoring"
when adding another if loop on top .

On Tue, Oct 26, 2021 at 7:24 PM Praveen Kumar <kpraveen.lkml@gmail.com>
wrote:

> On 26-10-2021 19:12, Kushal Kothari wrote:
> > Refactor nested if-else to avoid deep indentations. There is no change
> > in the logic of the new code, however, now it is simple because it gets
> > rid of five unnecessary else conditionals and it combines nested if into
> > single if-else-if. This refactor also leads to fix warning detected by
> > checkpatch.pl:
> > WARNING: Too many leading tabs - consider code refactoring
> >
> > Signed-off-by: Kushal Kothari <kushalkothari285@gmail.com>
> > ---
> >
> > Changes in v2: Fix the bug of not handling properly the else logic
> > when p is not null in else-if. Also, reword the subject line and break
> > it up at 72 columns.
> >
> >  drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 69 ++++++++-----------
> >  1 file changed, 29 insertions(+), 40 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> > index 0f82f5031c43..267d853b1514 100644
> > --- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> > +++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> > @@ -1192,50 +1192,39 @@ unsigned int OnAssocReq(struct adapter
> *padapter, union recv_frame *precv_frame)
> >               p = pframe + WLAN_HDR_A3_LEN + ie_offset; ie_len = 0;
> >               for (;;) {
> >                       p = rtw_get_ie(p, WLAN_EID_VENDOR_SPECIFIC,
> &ie_len, pkt_len - WLAN_HDR_A3_LEN - ie_offset);
> > -                     if (p) {
> > -                             if (!memcmp(p+2, WMM_IE, 6)) {
> > -
> > -                                     pstat->flags |= WLAN_STA_WME;
> > -
> > -                                     pstat->qos_option = 1;
> > -                                     pstat->qos_info = *(p+8);
> > -
> > -                                     pstat->max_sp_len =
> (pstat->qos_info>>5)&0x3;
> > -
> > -                                     if ((pstat->qos_info&0xf) != 0xf)
> > -                                             pstat->has_legacy_ac =
> true;
> > -                                     else
> > -                                             pstat->has_legacy_ac =
> false;
> > -
> > -                                     if (pstat->qos_info&0xf) {
> > -                                             if (pstat->qos_info&BIT(0))
> > -                                                     pstat->uapsd_vo =
> BIT(0)|BIT(1);
> > -                                             else
> > -                                                     pstat->uapsd_vo =
> 0;
> > -
> > -                                             if (pstat->qos_info&BIT(1))
> > -                                                     pstat->uapsd_vi =
> BIT(0)|BIT(1);
> > -                                             else
> > -                                                     pstat->uapsd_vi =
> 0;
> > -
> > -                                             if (pstat->qos_info&BIT(2))
> > -                                                     pstat->uapsd_bk =
> BIT(0)|BIT(1);
> > -                                             else
> > -                                                     pstat->uapsd_bk =
> 0;
> > -
> > -                                             if (pstat->qos_info&BIT(3))
> > -                                                     pstat->uapsd_be =
> BIT(0)|BIT(1);
> > -                                             else
> > -                                                     pstat->uapsd_be =
> 0;
> > -
> > -                                     }
> > -
> > -                                     break;
> > +                     if (p && memcmp(p+2, WMM_IE, 6)) {
> > +                             p = p + ie_len + 2;
> > +                     } else if (p && !memcmp(p+2, WMM_IE, 6)) {
>
> I would think of something,
>
> for(;;) {
>         p = rtw_get_ie(p, WLAN_EID_VENDOR_SPECIFIC, &ie_len, pkt_len -
> WLAN_HDR_A3_LEN - ie_offset);
>         if (p) {
>                 if (memcmp(p+2, WMM_IE, 6)) {
>                         p = p + ie_len + 2;
>                         continue;
>                 }
>                 pstat->flags |= WLAN_STA_WME;
>                 ...
>         }
>         /* Here we will reach only if p is NULL or its required entry */
>         break;
> }
>
> Can you please check if this works well. Thanks.
> Also, wanted to check how are you testing these changes ?
>
> > +                             pstat->flags |= WLAN_STA_WME;
> > +                             pstat->qos_option = 1;
> > +                             pstat->qos_info = *(p+8);
> > +                             pstat->max_sp_len =
> (pstat->qos_info>>5)&0x3;
> > +
> > +                             pstat->has_legacy_ac = false;
> > +                             if ((pstat->qos_info&0xf) != 0xf)
> > +                                     pstat->has_legacy_ac = true;
> > +
> > +                             if (pstat->qos_info&0xf) {
> > +                                     pstat->uapsd_vo = 0;
> > +                                     if (pstat->qos_info&BIT(0))
> > +                                             pstat->uapsd_vo =
> BIT(0)|BIT(1);
> > +
> > +                                     pstat->uapsd_vi = 0;
> > +                                     if (pstat->qos_info&BIT(1))
> > +                                             pstat->uapsd_vi =
> BIT(0)|BIT(1);
> > +
> > +                                     pstat->uapsd_bk = 0;
> > +                                     if (pstat->qos_info&BIT(2))
> > +                                             pstat->uapsd_bk =
> BIT(0)|BIT(1);
> > +
> > +                                     pstat->uapsd_be = 0;
> > +                                     if (pstat->qos_info&BIT(3))
> > +                                             pstat->uapsd_be =
> BIT(0)|BIT(1);
> >                               }
> > +                             break;
> >                       } else {
> >                               break;
> >                       }
> > -                     p = p + ie_len + 2;
> >               }
> >       }
> >
> >
>
> Regards,
>
> ~Praveen.
>
>

--000000000000a8a9a905cf425265
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+PHNwYW4gY2xhc3M9ImdtYWlsLWltIj48ZGl2PiZndDtDYW4geW91IHBs
ZWFzZSBjaGVjayBpZiB0aGlzIHdvcmtzIHdlbGwuIFRoYW5rcy48L2Rpdj48ZGl2Pjxicj48L2Rp
dj48L3NwYW4+PGRpdj7CoDxhIGhyZWY9Imh0dHA6Ly9jaGVja3BhdGNoLnBsIiB0YXJnZXQ9Il9i
bGFuayI+Y2hlY2twYXRjaC5wbDwvYT4gYWdhaW4gd2FybnMgb2YgPGJyPjwvZGl2PjxzcGFuIGNs
YXNzPSJnbWFpbC1pbSI+PGRpdj4mcXVvdDtXQVJOSU5HOiBUb28gbWFueSBsZWFkaW5nIHRhYnMg
LSBjb25zaWRlciBjb2RlIHJlZmFjdG9yaW5nJnF1b3Q7PC9kaXY+PC9zcGFuPjxkaXY+d2hlbiBh
ZGRpbmcgYW5vdGhlciBpZiBsb29wIG9uIHRvcCAuPC9kaXY+PC9kaXY+PGJyPjxkaXYgY2xhc3M9
ImdtYWlsX3F1b3RlIj48ZGl2IGRpcj0ibHRyIiBjbGFzcz0iZ21haWxfYXR0ciI+T24gVHVlLCBP
Y3QgMjYsIDIwMjEgYXQgNzoyNCBQTSBQcmF2ZWVuIEt1bWFyICZsdDs8YSBocmVmPSJtYWlsdG86
a3ByYXZlZW4ubGttbEBnbWFpbC5jb20iPmtwcmF2ZWVuLmxrbWxAZ21haWwuY29tPC9hPiZndDsg
d3JvdGU6PGJyPjwvZGl2PjxibG9ja3F1b3RlIGNsYXNzPSJnbWFpbF9xdW90ZSIgc3R5bGU9Im1h
cmdpbjowcHggMHB4IDBweCAwLjhleDtib3JkZXItbGVmdDoxcHggc29saWQgcmdiKDIwNCwyMDQs
MjA0KTtwYWRkaW5nLWxlZnQ6MWV4Ij5PbiAyNi0xMC0yMDIxIDE5OjEyLCBLdXNoYWwgS290aGFy
aSB3cm90ZTo8YnI+DQomZ3Q7IFJlZmFjdG9yIG5lc3RlZCBpZi1lbHNlIHRvIGF2b2lkIGRlZXAg
aW5kZW50YXRpb25zLiBUaGVyZSBpcyBubyBjaGFuZ2U8YnI+DQomZ3Q7IGluIHRoZSBsb2dpYyBv
ZiB0aGUgbmV3IGNvZGUsIGhvd2V2ZXIsIG5vdyBpdCBpcyBzaW1wbGUgYmVjYXVzZSBpdCBnZXRz
PGJyPg0KJmd0OyByaWQgb2YgZml2ZSB1bm5lY2Vzc2FyeSBlbHNlIGNvbmRpdGlvbmFscyBhbmQg
aXQgY29tYmluZXMgbmVzdGVkIGlmIGludG88YnI+DQomZ3Q7IHNpbmdsZSBpZi1lbHNlLWlmLiBU
aGlzIHJlZmFjdG9yIGFsc28gbGVhZHMgdG8gZml4IHdhcm5pbmcgZGV0ZWN0ZWQgYnk8YnI+DQom
Z3Q7IDxhIGhyZWY9Imh0dHA6Ly9jaGVja3BhdGNoLnBsIiByZWw9Im5vcmVmZXJyZXIiIHRhcmdl
dD0iX2JsYW5rIj5jaGVja3BhdGNoLnBsPC9hPjo8YnI+DQomZ3Q7IFdBUk5JTkc6IFRvbyBtYW55
IGxlYWRpbmcgdGFicyAtIGNvbnNpZGVyIGNvZGUgcmVmYWN0b3Jpbmc8YnI+DQomZ3Q7IDxicj4N
CiZndDsgU2lnbmVkLW9mZi1ieTogS3VzaGFsIEtvdGhhcmkgJmx0OzxhIGhyZWY9Im1haWx0bzpr
dXNoYWxrb3RoYXJpMjg1QGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPmt1c2hhbGtvdGhhcmky
ODVAZ21haWwuY29tPC9hPiZndDs8YnI+DQomZ3Q7IC0tLTxicj4NCiZndDsgPGJyPg0KJmd0OyBD
aGFuZ2VzIGluIHYyOiBGaXggdGhlIGJ1ZyBvZiBub3QgaGFuZGxpbmcgcHJvcGVybHkgdGhlIGVs
c2UgbG9naWM8YnI+DQomZ3Q7IHdoZW4gcCBpcyBub3QgbnVsbCBpbiBlbHNlLWlmLiBBbHNvLCBy
ZXdvcmQgdGhlIHN1YmplY3QgbGluZSBhbmQgYnJlYWsgPGJyPg0KJmd0OyBpdCB1cCBhdCA3MiBj
b2x1bW5zLjxicj4NCiZndDsgPGJyPg0KJmd0O8KgIGRyaXZlcnMvc3RhZ2luZy9ydGw4NzIzYnMv
Y29yZS9ydHdfbWxtZV9leHQuYyB8IDY5ICsrKysrKysrLS0tLS0tLS0tLS08YnI+DQomZ3Q7wqAg
MSBmaWxlIGNoYW5nZWQsIDI5IGluc2VydGlvbnMoKyksIDQwIGRlbGV0aW9ucygtKTxicj4NCiZn
dDsgPGJyPg0KJmd0OyBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3J0bDg3MjNicy9jb3Jl
L3J0d19tbG1lX2V4dC5jIGIvZHJpdmVycy9zdGFnaW5nL3J0bDg3MjNicy9jb3JlL3J0d19tbG1l
X2V4dC5jPGJyPg0KJmd0OyBpbmRleCAwZjgyZjUwMzFjNDMuLjI2N2Q4NTNiMTUxNCAxMDA2NDQ8
YnI+DQomZ3Q7IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9ydGw4NzIzYnMvY29yZS9ydHdfbWxtZV9l
eHQuYzxicj4NCiZndDsgKysrIGIvZHJpdmVycy9zdGFnaW5nL3J0bDg3MjNicy9jb3JlL3J0d19t
bG1lX2V4dC5jPGJyPg0KJmd0OyBAQCAtMTE5Miw1MCArMTE5MiwzOSBAQCB1bnNpZ25lZCBpbnQg
T25Bc3NvY1JlcShzdHJ1Y3QgYWRhcHRlciAqcGFkYXB0ZXIsIHVuaW9uIHJlY3ZfZnJhbWUgKnBy
ZWN2X2ZyYW1lKTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHAgPSBwZnJhbWUgKyBX
TEFOX0hEUl9BM19MRU4gKyBpZV9vZmZzZXQ7IGllX2xlbiA9IDA7PGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgZm9yICg7Oykgezxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoHAgPSBydHdfZ2V0X2llKHAsIFdMQU5fRUlEX1ZFTkRPUl9TUEVDSUZJQywg
JmFtcDtpZV9sZW4sIHBrdF9sZW4gLSBXTEFOX0hEUl9BM19MRU4gLSBpZV9vZmZzZXQpOzxicj4N
CiZndDsgLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgaWYgKHApIHs8YnI+DQomZ3Q7
IC3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGlmICghbWVtY21w
KHArMiwgV01NX0lFLCA2KSkgezxicj4NCiZndDsgLTxicj4NCiZndDsgLcKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcHN0YXQtJmd0O2ZsYWdz
IHw9IFdMQU5fU1RBX1dNRTs8YnI+DQomZ3Q7IC08YnI+DQomZ3Q7IC3CoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHBzdGF0LSZndDtxb3Nfb3B0
aW9uID0gMTs8YnI+DQomZ3Q7IC3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoHBzdGF0LSZndDtxb3NfaW5mbyA9ICoocCs4KTs8YnI+DQomZ3Q7
IC08YnI+DQomZ3Q7IC3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoHBzdGF0LSZndDttYXhfc3BfbGVuID0gKHBzdGF0LSZndDtxb3NfaW5mbyZn
dDsmZ3Q7NSkmYW1wOzB4Mzs8YnI+DQomZ3Q7IC08YnI+DQomZ3Q7IC3CoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGlmICgocHN0YXQtJmd0O3Fv
c19pbmZvJmFtcDsweGYpICE9IDB4Zik8YnI+DQomZ3Q7IC3CoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHBzdGF0LSZndDto
YXNfbGVnYWN5X2FjID0gdHJ1ZTs8YnI+DQomZ3Q7IC3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGVsc2U8YnI+DQomZ3Q7IC3CoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oHBzdGF0LSZndDtoYXNfbGVnYWN5X2FjID0gZmFsc2U7PGJyPg0KJmd0OyAtPGJyPg0KJmd0OyAt
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBp
ZiAocHN0YXQtJmd0O3Fvc19pbmZvJmFtcDsweGYpIHs8YnI+DQomZ3Q7IC3CoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGlm
IChwc3RhdC0mZ3Q7cW9zX2luZm8mYW1wO0JJVCgwKSk8YnI+DQomZ3Q7IC3CoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoHBzdGF0LSZndDt1YXBzZF92byA9IEJJVCgwKXxCSVQoMSk7PGJyPg0KJmd0OyAt
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqBlbHNlPGJyPg0KJmd0OyAtwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBwc3RhdC0m
Z3Q7dWFwc2Rfdm8gPSAwOzxicj4NCiZndDsgLTxicj4NCiZndDsgLcKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgaWYgKHBz
dGF0LSZndDtxb3NfaW5mbyZhbXA7QklUKDEpKTxicj4NCiZndDsgLcKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgcHN0YXQtJmd0O3VhcHNkX3ZpID0gQklUKDApfEJJVCgxKTs8YnI+DQomZ3Q7IC3CoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoGVsc2U8YnI+DQomZ3Q7IC3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHBzdGF0LSZndDt1
YXBzZF92aSA9IDA7PGJyPg0KJmd0OyAtPGJyPg0KJmd0OyAtwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBpZiAocHN0YXQt
Jmd0O3Fvc19pbmZvJmFtcDtCSVQoMikpPGJyPg0KJmd0OyAtwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqBwc3RhdC0mZ3Q7dWFwc2RfYmsgPSBCSVQoMCl8QklUKDEpOzxicj4NCiZndDsgLcKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgZWxzZTxicj4NCiZndDsgLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcHN0YXQtJmd0O3VhcHNk
X2JrID0gMDs8YnI+DQomZ3Q7IC08YnI+DQomZ3Q7IC3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGlmIChwc3RhdC0mZ3Q7
cW9zX2luZm8mYW1wO0JJVCgzKSk8YnI+DQomZ3Q7IC3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHBz
dGF0LSZndDt1YXBzZF9iZSA9IEJJVCgwKXxCSVQoMSk7PGJyPg0KJmd0OyAtwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBl
bHNlPGJyPg0KJmd0OyAtwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBwc3RhdC0mZ3Q7dWFwc2RfYmUg
PSAwOzxicj4NCiZndDsgLTxicj4NCiZndDsgLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgfTxicj4NCiZndDsgLTxicj4NCiZndDsgLcKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgYnJlYWs7
PGJyPg0KJmd0OyArwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBpZiAocCAmYW1wOyZh
bXA7IG1lbWNtcChwKzIsIFdNTV9JRSwgNikpIHs8YnI+DQomZ3Q7ICvCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHAgPSBwICsgaWVfbGVuICsgMjs8YnI+DQomZ3Q7
ICvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoH0gZWxzZSBpZiAocCAmYW1wOyZhbXA7
ICFtZW1jbXAocCsyLCBXTU1fSUUsIDYpKSB7PGJyPg0KPGJyPg0KSSB3b3VsZCB0aGluayBvZiBz
b21ldGhpbmcsPGJyPg0KPGJyPg0KZm9yKDs7KSB7PGJyPg0KwqAgwqAgwqAgwqAgcCA9IHJ0d19n
ZXRfaWUocCwgV0xBTl9FSURfVkVORE9SX1NQRUNJRklDLCAmYW1wO2llX2xlbiwgcGt0X2xlbiAt
IFdMQU5fSERSX0EzX0xFTiAtIGllX29mZnNldCk7PGJyPg0KwqAgwqAgwqAgwqAgaWYgKHApIHs8
YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBpZiAobWVtY21wKHArMiwgV01NX0lFLCA2KSkg
ezxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHAgPSBwICsgaWVfbGVu
ICsgMjs8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBjb250aW51ZTs8
YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCB9PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgcHN0YXQtJmd0O2ZsYWdzIHw9IFdMQU5fU1RBX1dNRTs8YnI+DQrCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCAuLi48YnI+DQrCoCDCoCDCoCDCoCB9PGJyPg0KwqAgwqAgwqAgwqAgLyogSGVyZSB3
ZSB3aWxsIHJlYWNoIG9ubHkgaWYgcCBpcyBOVUxMIG9yIGl0cyByZXF1aXJlZCBlbnRyeSAqLzxi
cj4NCsKgIMKgIMKgIMKgIGJyZWFrOzxicj4NCn08YnI+DQo8YnI+DQpDYW4geW91IHBsZWFzZSBj
aGVjayBpZiB0aGlzIHdvcmtzIHdlbGwuIFRoYW5rcy48YnI+DQpBbHNvLCB3YW50ZWQgdG8gY2hl
Y2sgaG93IGFyZSB5b3UgdGVzdGluZyB0aGVzZSBjaGFuZ2VzID88YnI+DQo8YnI+DQomZ3Q7ICvC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHBzdGF0LSZndDtmbGFn
cyB8PSBXTEFOX1NUQV9XTUU7PGJyPg0KJmd0OyArwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqBwc3RhdC0mZ3Q7cW9zX29wdGlvbiA9IDE7PGJyPg0KJmd0OyArwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBwc3RhdC0mZ3Q7cW9zX2lu
Zm8gPSAqKHArOCk7PGJyPg0KJmd0OyArwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqBwc3RhdC0mZ3Q7bWF4X3NwX2xlbiA9IChwc3RhdC0mZ3Q7cW9zX2luZm8mZ3Q7
Jmd0OzUpJmFtcDsweDM7PGJyPg0KJmd0OyArPGJyPg0KJmd0OyArwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBwc3RhdC0mZ3Q7aGFzX2xlZ2FjeV9hYyA9IGZhbHNl
Ozxicj4NCiZndDsgK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
aWYgKChwc3RhdC0mZ3Q7cW9zX2luZm8mYW1wOzB4ZikgIT0gMHhmKTxicj4NCiZndDsgK8KgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcHN0YXQt
Jmd0O2hhc19sZWdhY3lfYWMgPSB0cnVlOzxicj4NCiZndDsgKzxicj4NCiZndDsgK8KgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgaWYgKHBzdGF0LSZndDtxb3NfaW5m
byZhbXA7MHhmKSB7PGJyPg0KJmd0OyArwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBwc3RhdC0mZ3Q7dWFwc2Rfdm8gPSAwOzxicj4NCiZndDsg
K8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
aWYgKHBzdGF0LSZndDtxb3NfaW5mbyZhbXA7QklUKDApKTxicj4NCiZndDsgK8KgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
cHN0YXQtJmd0O3VhcHNkX3ZvID0gQklUKDApfEJJVCgxKTs8YnI+DQomZ3Q7ICs8YnI+DQomZ3Q7
ICvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oHBzdGF0LSZndDt1YXBzZF92aSA9IDA7PGJyPg0KJmd0OyArwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBpZiAocHN0YXQtJmd0O3Fvc19pbmZv
JmFtcDtCSVQoMSkpPGJyPg0KJmd0OyArwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBwc3RhdC0mZ3Q7dWFwc2RfdmkgPSBC
SVQoMCl8QklUKDEpOzxicj4NCiZndDsgKzxicj4NCiZndDsgK8KgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcHN0YXQtJmd0O3VhcHNkX2JrID0g
MDs8YnI+DQomZ3Q7ICvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoGlmIChwc3RhdC0mZ3Q7cW9zX2luZm8mYW1wO0JJVCgyKSk8YnI+DQomZ3Q7
ICvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoHBzdGF0LSZndDt1YXBzZF9iayA9IEJJVCgwKXxCSVQoMSk7PGJyPg0KJmd0
OyArPGJyPg0KJmd0OyArwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqBwc3RhdC0mZ3Q7dWFwc2RfYmUgPSAwOzxicj4NCiZndDsgK8KgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgaWYgKHBzdGF0
LSZndDtxb3NfaW5mbyZhbXA7QklUKDMpKTxicj4NCiZndDsgK8KgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcHN0YXQtJmd0
O3VhcHNkX2JlID0gQklUKDApfEJJVCgxKTs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB9PGJyPg0KJmd0OyArwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBicmVhazs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqB9IGVsc2Ugezxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGJyZWFrOzxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoH08YnI+DQomZ3Q7IC3CoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoHAgPSBwICsgaWVfbGVuICsgMjs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqB9PGJyPg0KJmd0O8KgIMKgIMKgIMKgfTxicj4NCiZndDvCoCA8YnI+DQomZ3Q7IDxicj4N
Cjxicj4NClJlZ2FyZHMsPGJyPg0KPGJyPg0KflByYXZlZW4uPGJyPg0KPGJyPg0KPC9ibG9ja3F1
b3RlPjwvZGl2Pg0K
--000000000000a8a9a905cf425265--

