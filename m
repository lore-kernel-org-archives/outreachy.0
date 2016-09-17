X-GM-THRID: 6331255217033576448
X-Received: by 10.200.45.232 with SMTP id q37mr1426405qta.78.1474117996080;
        Sat, 17 Sep 2016 06:13:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.88.1 with SMTP id f1ls1690660itb.19.gmail; Sat, 17 Sep 2016
 06:13:13 -0700 (PDT)
X-Received: by 10.107.25.147 with SMTP id 141mr12193300ioz.17.1474117993052;
        Sat, 17 Sep 2016 06:13:13 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-qk0-x241.google.com (mail-qk0-x241.google.com. [2607:f8b0:400d:c09::241])
        by gmr-mx.google.com with ESMTPS id d206si1031401ywh.3.2016.09.17.06.13.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 06:13:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400d:c09::241 as permitted sender) client-ip=2607:f8b0:400d:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400d:c09::241 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x241.google.com with SMTP id w204so7097920qka.2
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Sep 2016 06:13:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=49qGkBcayATr0qeZPvWgxx+r4JFEQB7FLc/dT7ejIGw=;
        b=AZDDYBpGFwr5F9NCUyTxO5A5nolzbrAyo96jy5eTecfZfpUuH8gErNDW5Qot5vtn7B
         Sbs+7kRNjy1Jmd77Y46PwKf0FrHPxnP5AHWc9+QUpgtm9Z5M994JookEMNRfOh9qp9Ee
         AT34SdablwAmJ/SrvfeWyTYUo5NsLw+kCzrMb6ubfWk0gyAUTglolC5PCaYn8h2QTYe6
         HlCs/f7PaNbIGhon6qFKCpMKBL2v4Irk35a3qZM5IAYYZVgKi2UfedfWrV9Fi3IeOver
         XdsUe7entdQ8E4yBX11gvh8Mtz0k1nPLdMz+P2TFB/gnJyh2KTr3UotKGGwFvTWcP48I
         XPCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=49qGkBcayATr0qeZPvWgxx+r4JFEQB7FLc/dT7ejIGw=;
        b=hlMEjM3on4PE8DgzB+PNvwf0gIypMH6LImxRgoDMYtyrmhYb4nLndSqRgYHclCtSSD
         ShJP5zNpKoGs8suP0RCJAHs/ZWuKSmhKCFoyjSKg8WA7YcoomUGHq/8Svk1mm5ZqbLkv
         HM16kyhYgh7E3+wL1zYjxn0v0uPZHzCzMntUq8FpG/67kbu1ewwPskLVplxeE80awsVs
         cmjWpFtmkIkgxE4g/NX6gnkDCgRDKTcNtHhf7k6wLis50yYk0qxEzH6X6YD4iy1V165t
         79FiBEU2fBeECtphRqr1a9N45nHhipMIJ5gkfrARPGpF5Bpt0G/u+o4K5b478JVhFx4L
         UqqA==
X-Gm-Message-State: AE9vXwNPXK8jh/bdRvcH4ozCt7AxEk+tBwN8isvgJAzbnxaHTp9LNRJYxcXynIlHqakCzujzUIGYn92xFQA+EQ==
X-Received: by 10.233.237.11 with SMTP id c11mr20471550qkg.118.1474117992560;
 Sat, 17 Sep 2016 06:13:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.56.184 with HTTP; Sat, 17 Sep 2016 06:12:42 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1609171427090.3454@hadrien>
References: <cover.1474110016.git.gs051095@gmail.com> <e381c46f967b98c2ccbbc9b14147f109f21a5bef.1474110016.git.gs051095@gmail.com>
 <alpine.DEB.2.10.1609171427090.3454@hadrien>
From: Gargi Sharma <gs051095@gmail.com>
Date: Sat, 17 Sep 2016 18:42:42 +0530
Message-ID: <CAOCi2DFHX0_daOwRXrea-YGOAaan3s0QpUmHnte_k1Rz4YKStQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: wlan-ng: change
 indentation for macros
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, Greg KH <gregkh@linuxfoundation.org>
Content-Type: multipart/alternative; boundary=001a114f55d24dbedd053cb3d7c1

--001a114f55d24dbedd053cb3d7c1
Content-Type: text/plain; charset=UTF-8

On Sat, Sep 17, 2016 at 5:57 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
> On Sat, 17 Sep 2016, Gargi Sharma wrote:
>
> > modify indentation from two tabs to one space for macros so
> > as to follow the kernel coding style guide.
>
> The first letter of the sentence should be capitalized.

I'm sorry you had to point that out again. I'll correct it and send a
version 2.

gargi

> julia
>
> >
> > Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> > ---
> >  drivers/staging/wlan-ng/hfa384x.h | 312
+++++++++++++++++++-------------------
> >  1 file changed, 155 insertions(+), 157 deletions(-)
> >
> > diff --git a/drivers/staging/wlan-ng/hfa384x.h
b/drivers/staging/wlan-ng/hfa384x.h
> > index 7029253..327d7b8 100644
> > --- a/drivers/staging/wlan-ng/hfa384x.h
> > +++ b/drivers/staging/wlan-ng/hfa384x.h
> > @@ -62,32 +62,32 @@
> >  #include <linux/usb.h>
> >
> >  /* Mins & Maxs */
> > -#define      HFA384x_PORTID_MAX              ((u16)7)
> > -#define      HFA384x_NUMPORTS_MAX            ((u16)(HFA384x_PORTID_MAX
+ 1))
> > -#define      HFA384x_PDR_LEN_MAX             ((u16)512) /* in bytes,
from EK */
> > -#define      HFA384x_PDA_RECS_MAX            ((u16)200) /* a guess */
> > -#define      HFA384x_PDA_LEN_MAX             ((u16)1024) /* in bytes,
from EK*/
> > -#define      HFA384x_SCANRESULT_MAX          ((u16)31)
> > -#define      HFA384x_HSCANRESULT_MAX         ((u16)31)
> > -#define      HFA384x_CHINFORESULT_MAX        ((u16)16)
> > -#define      HFA384x_RID_GUESSING_MAXLEN     2048    /* I'm not really
sure */
> > -#define      HFA384x_RIDDATA_MAXLEN
 HFA384x_RID_GUESSING_MAXLEN
> > -#define      HFA384x_USB_RWMEM_MAXLEN        2048
> > +#define HFA384x_PORTID_MAX           ((u16)7)
> > +#define HFA384x_NUMPORTS_MAX         ((u16)(HFA384x_PORTID_MAX + 1))
> > +#define HFA384x_PDR_LEN_MAX          ((u16)512) /* in bytes, from EK */
> > +#define HFA384x_PDA_RECS_MAX         ((u16)200) /* a guess */
> > +#define HFA384x_PDA_LEN_MAX          ((u16)1024) /* in bytes, from EK*/
> > +#define HFA384x_SCANRESULT_MAX               ((u16)31)
> > +#define HFA384x_HSCANRESULT_MAX              ((u16)31)
> > +#define HFA384x_CHINFORESULT_MAX     ((u16)16)
> > +#define HFA384x_RID_GUESSING_MAXLEN  2048    /* I'm not really sure */
> > +#define HFA384x_RIDDATA_MAXLEN
HFA384x_RID_GUESSING_MAXLEN
> > +#define HFA384x_USB_RWMEM_MAXLEN     2048
> >
> >  /* Support Constants */
> > -#define              HFA384x_PORTTYPE_IBSS                   ((u16)0)
> > -#define              HFA384x_PORTTYPE_BSS                    ((u16)1)
> > -#define              HFA384x_PORTTYPE_PSUEDOIBSS             ((u16)3)
> > -#define              HFA384x_WEPFLAGS_PRIVINVOKED
 ((u16)BIT(0))
> > -#define              HFA384x_WEPFLAGS_EXCLUDE
 ((u16)BIT(1))
> > -#define              HFA384x_WEPFLAGS_DISABLE_TXCRYPT
 ((u16)BIT(4))
> > -#define              HFA384x_WEPFLAGS_DISABLE_RXCRYPT
 ((u16)BIT(7))
> > -#define              HFA384x_ROAMMODE_HOSTSCAN_HOSTROAM      ((u16)3)
> > -#define              HFA384x_PORTSTATUS_DISABLED             ((u16)1)
> > -#define              HFA384x_RATEBIT_1                       ((u16)1)
> > -#define              HFA384x_RATEBIT_2                       ((u16)2)
> > -#define              HFA384x_RATEBIT_5dot5                   ((u16)4)
> > -#define              HFA384x_RATEBIT_11                      ((u16)8)
> > +#define HFA384x_PORTTYPE_IBSS                        ((u16)0)
> > +#define HFA384x_PORTTYPE_BSS                 ((u16)1)
> > +#define HFA384x_PORTTYPE_PSUEDOIBSS          ((u16)3)
> > +#define HFA384x_WEPFLAGS_PRIVINVOKED         ((u16)BIT(0))
> > +#define HFA384x_WEPFLAGS_EXCLUDE             ((u16)BIT(1))
> > +#define HFA384x_WEPFLAGS_DISABLE_TXCRYPT     ((u16)BIT(4))
> > +#define HFA384x_WEPFLAGS_DISABLE_RXCRYPT     ((u16)BIT(7))
> > +#define HFA384x_ROAMMODE_HOSTSCAN_HOSTROAM   ((u16)3)
> > +#define HFA384x_PORTSTATUS_DISABLED          ((u16)1)
> > +#define HFA384x_RATEBIT_1                    ((u16)1)
> > +#define HFA384x_RATEBIT_2                    ((u16)2)
> > +#define HFA384x_RATEBIT_5dot5                        ((u16)4)
> > +#define HFA384x_RATEBIT_11                   ((u16)8)
> >
> >  /* MAC Internal memory constants and macros */
> >  /* masks and macros used to manipulate MAC internal memory addresses.
*/
> > @@ -105,75 +105,75 @@
> >   */
> >
> >  /* Mask bits for discarding unwanted pieces in a flat address */
> > -#define              HFA384x_ADDR_FLAT_AUX_PAGE_MASK (0x007fff80)
> > -#define              HFA384x_ADDR_FLAT_AUX_OFF_MASK  (0x0000007f)
> > -#define              HFA384x_ADDR_FLAT_CMD_PAGE_MASK (0xffff0000)
> > -#define              HFA384x_ADDR_FLAT_CMD_OFF_MASK  (0x0000ffff)
> > +#define HFA384x_ADDR_FLAT_AUX_PAGE_MASK      (0x007fff80)
> > +#define HFA384x_ADDR_FLAT_AUX_OFF_MASK       (0x0000007f)
> > +#define HFA384x_ADDR_FLAT_CMD_PAGE_MASK      (0xffff0000)
> > +#define HFA384x_ADDR_FLAT_CMD_OFF_MASK       (0x0000ffff)
> >
> >  /*
> >   * Mask bits for discarding unwanted pieces in AUX format
> >   * 16-bit address parts
> >   */
> > -#define              HFA384x_ADDR_AUX_PAGE_MASK      (0xffff)
> > -#define              HFA384x_ADDR_AUX_OFF_MASK       (0x007f)
> > +#define HFA384x_ADDR_AUX_PAGE_MASK   (0xffff)
> > +#define HFA384x_ADDR_AUX_OFF_MASK    (0x007f)
> >
> >  /* Make a 32-bit flat address from AUX format 16-bit page and offset */
> > -#define              HFA384x_ADDR_AUX_MKFLAT(p, o)   \
> > +#define HFA384x_ADDR_AUX_MKFLAT(p, o)        \
> >               ((((u32)(((u16)(p)) & HFA384x_ADDR_AUX_PAGE_MASK)) << 7)
| \
> >               ((u32)(((u16)(o)) & HFA384x_ADDR_AUX_OFF_MASK)))
> >
> >  /* Make CMD format offset and page from a 32-bit flat address */
> > -#define              HFA384x_ADDR_CMD_MKPAGE(f) \
> > +#define HFA384x_ADDR_CMD_MKPAGE(f) \
> >               ((u16)((((u32)(f)) & HFA384x_ADDR_FLAT_CMD_PAGE_MASK) >>
16))
> > -#define              HFA384x_ADDR_CMD_MKOFF(f) \
> > +#define HFA384x_ADDR_CMD_MKOFF(f) \
> >               ((u16)(((u32)(f)) & HFA384x_ADDR_FLAT_CMD_OFF_MASK))
> >
> >  /* Controller Memory addresses */
> > -#define              HFA3842_PDA_BASE        (0x007f0000UL)
> > -#define              HFA3841_PDA_BASE        (0x003f0000UL)
> > -#define              HFA3841_PDA_BOGUS_BASE  (0x00390000UL)
> > +#define HFA3842_PDA_BASE     (0x007f0000UL)
> > +#define HFA3841_PDA_BASE     (0x003f0000UL)
> > +#define HFA3841_PDA_BOGUS_BASE       (0x00390000UL)
> >
> >  /* Driver Download states */
> > -#define              HFA384x_DLSTATE_DISABLED                0
> > -#define              HFA384x_DLSTATE_RAMENABLED              1
> > -#define              HFA384x_DLSTATE_FLASHENABLED            2
> > +#define HFA384x_DLSTATE_DISABLED             0
> > +#define HFA384x_DLSTATE_RAMENABLED           1
> > +#define HFA384x_DLSTATE_FLASHENABLED         2
> >
> >  /* Register Field Masks */
> > -#define              HFA384x_CMD_AINFO               ((u16)(BIT(14) |
BIT(13) \
> > +#define HFA384x_CMD_AINFO            ((u16)(BIT(14) | BIT(13) \
> >                                                       | BIT(12) |
BIT(11) \
> >                                                       | BIT(10) |
BIT(9) \
> >                                                       | BIT(8)))
> > -#define              HFA384x_CMD_MACPORT             ((u16)(BIT(10) |
BIT(9) | \
> > +#define HFA384x_CMD_MACPORT          ((u16)(BIT(10) | BIT(9) | \
> >                                                       BIT(8)))
> > -#define              HFA384x_CMD_PROGMODE            ((u16)(BIT(9) |
BIT(8)))
> > -#define              HFA384x_CMD_CMDCODE             ((u16)(BIT(5) |
BIT(4) | \
> > -                                                     BIT(3) | BIT(2) |
\
> > -                                                     BIT(1) | BIT(0)))
> > +#define HFA384x_CMD_PROGMODE         ((u16)(BIT(9) | BIT(8)))
> > +#define HFA384x_CMD_CMDCODE          ((u16)(BIT(5) | BIT(4) | \
> > +                                             BIT(3) | BIT(2) | \
> > +                                             BIT(1) | BIT(0)))
> >
> > -#define              HFA384x_STATUS_RESULT           ((u16)(BIT(14) |
BIT(13) \
> > +#define HFA384x_STATUS_RESULT                ((u16)(BIT(14) | BIT(13) \
> >                                                       | BIT(12) |
BIT(11) \
> >                                                       | BIT(10) |
BIT(9) \
> >                                                       | BIT(8)))
> >
> >  /* Command Code Constants */
> >  /* Controller Commands */
> > -#define              HFA384x_CMDCODE_INIT            ((u16)0x00)
> > -#define              HFA384x_CMDCODE_ENABLE          ((u16)0x01)
> > -#define              HFA384x_CMDCODE_DISABLE         ((u16)0x02)
> > +#define HFA384x_CMDCODE_INIT         ((u16)0x00)
> > +#define HFA384x_CMDCODE_ENABLE               ((u16)0x01)
> > +#define HFA384x_CMDCODE_DISABLE              ((u16)0x02)
> >
> >  /* Regulate Commands */
> > -#define              HFA384x_CMDCODE_INQ             ((u16)0x11)
> > +#define HFA384x_CMDCODE_INQ          ((u16)0x11)
> >
> >  /* Configure Commands */
> > -#define              HFA384x_CMDCODE_DOWNLD          ((u16)0x22)
> > +#define HFA384x_CMDCODE_DOWNLD               ((u16)0x22)
> >
> >  /* Debugging Commands */
> > -#define              HFA384x_CMDCODE_MONITOR         ((u16)(0x38))
> > -#define              HFA384x_MONITOR_ENABLE          ((u16)(0x0b))
> > -#define              HFA384x_MONITOR_DISABLE         ((u16)(0x0f))
> > +#define HFA384x_CMDCODE_MONITOR              ((u16)(0x38))
> > +#define HFA384x_MONITOR_ENABLE               ((u16)(0x0b))
> > +#define HFA384x_MONITOR_DISABLE              ((u16)(0x0f))
> >
> >  /* Result Codes */
> > -#define              HFA384x_CMD_ERR                 ((u16)(0x7F))
> > +#define HFA384x_CMD_ERR                      ((u16)(0x7F))
> >
> >  /*
> >   *   Programming Modes
> > @@ -182,104 +182,103 @@
> >   *   MODE 2: Enable non-volatile memory programming
> >   *   MODE 3: Program non-volatile memory section
> >   */
> > -#define              HFA384x_PROGMODE_DISABLE        ((u16)0x00)
> > -#define              HFA384x_PROGMODE_RAM            ((u16)0x01)
> > -#define              HFA384x_PROGMODE_NV             ((u16)0x02)
> > -#define              HFA384x_PROGMODE_NVWRITE        ((u16)0x03)
> > +#define HFA384x_PROGMODE_DISABLE     ((u16)0x00)
> > +#define HFA384x_PROGMODE_RAM         ((u16)0x01)
> > +#define HFA384x_PROGMODE_NV          ((u16)0x02)
> > +#define HFA384x_PROGMODE_NVWRITE     ((u16)0x03)
> >
> >  /* Record ID Constants */
> >  /* Configuration RIDs: Network Parameters, Static Configuration
Entities */
> > -#define              HFA384x_RID_CNFPORTTYPE         ((u16)0xFC00)
> > -#define              HFA384x_RID_CNFOWNMACADDR       ((u16)0xFC01)
> > -#define              HFA384x_RID_CNFDESIREDSSID      ((u16)0xFC02)
> > -#define              HFA384x_RID_CNFOWNCHANNEL       ((u16)0xFC03)
> > -#define              HFA384x_RID_CNFOWNSSID          ((u16)0xFC04)
> > -#define              HFA384x_RID_CNFMAXDATALEN       ((u16)0xFC07)
> > +#define HFA384x_RID_CNFPORTTYPE              ((u16)0xFC00)
> > +#define HFA384x_RID_CNFOWNMACADDR    ((u16)0xFC01)
> > +#define HFA384x_RID_CNFDESIREDSSID   ((u16)0xFC02)
> > +#define HFA384x_RID_CNFOWNCHANNEL    ((u16)0xFC03)
> > +#define HFA384x_RID_CNFOWNSSID               ((u16)0xFC04)
> > +#define HFA384x_RID_CNFMAXDATALEN    ((u16)0xFC07)
> >
> >  /*
> >   * Configuration RID lengths: Network Params, Static Config Entities
> >   * This is the length of JUST the DATA part of the RID (does not
> >   * include the len or code fields)
> >   */
> > -#define              HFA384x_RID_CNFOWNMACADDR_LEN   ((u16)6)
> > -#define              HFA384x_RID_CNFDESIREDSSID_LEN  ((u16)34)
> > -#define              HFA384x_RID_CNFOWNSSID_LEN      ((u16)34)
> > +#define HFA384x_RID_CNFOWNMACADDR_LEN        ((u16)6)
> > +#define HFA384x_RID_CNFDESIREDSSID_LEN       ((u16)34)
> > +#define HFA384x_RID_CNFOWNSSID_LEN   ((u16)34)
> >
> >  /* Configuration RIDs: Network Parameters, Dynamic Configuration
Entities */
> > -#define              HFA384x_RID_CREATEIBSS          ((u16)0xFC81)
> > -#define              HFA384x_RID_FRAGTHRESH          ((u16)0xFC82)
> > -#define              HFA384x_RID_RTSTHRESH           ((u16)0xFC83)
> > -#define              HFA384x_RID_TXRATECNTL          ((u16)0xFC84)
> > -#define              HFA384x_RID_PROMISCMODE         ((u16)0xFC85)
> > +#define HFA384x_RID_CREATEIBSS               ((u16)0xFC81)
> > +#define HFA384x_RID_FRAGTHRESH               ((u16)0xFC82)
> > +#define HFA384x_RID_RTSTHRESH                ((u16)0xFC83)
> > +#define HFA384x_RID_TXRATECNTL               ((u16)0xFC84)
> > +#define HFA384x_RID_PROMISCMODE              ((u16)0xFC85)
> >
> >  /* Information RIDs: NIC Information */
> > -#define              HFA384x_RID_MAXLOADTIME         ((u16)0xFD00)
> > -#define              HFA384x_RID_DOWNLOADBUFFER      ((u16)0xFD01)
> > -#define              HFA384x_RID_PRIIDENTITY         ((u16)0xFD02)
> > -#define              HFA384x_RID_PRISUPRANGE         ((u16)0xFD03)
> > -#define              HFA384x_RID_PRI_CFIACTRANGES    ((u16)0xFD04)
> > -#define              HFA384x_RID_NICSERIALNUMBER     ((u16)0xFD0A)
> > -#define              HFA384x_RID_NICIDENTITY         ((u16)0xFD0B)
> > -#define              HFA384x_RID_MFISUPRANGE         ((u16)0xFD0C)
> > -#define              HFA384x_RID_CFISUPRANGE         ((u16)0xFD0D)
> > -#define              HFA384x_RID_STAIDENTITY         ((u16)0xFD20)
> > -#define              HFA384x_RID_STASUPRANGE         ((u16)0xFD21)
> > -#define              HFA384x_RID_STA_MFIACTRANGES    ((u16)0xFD22)
> > -#define              HFA384x_RID_STA_CFIACTRANGES    ((u16)0xFD23)
> > +#define HFA384x_RID_MAXLOADTIME              ((u16)0xFD00)
> > +#define HFA384x_RID_DOWNLOADBUFFER   ((u16)0xFD01)
> > +#define HFA384x_RID_PRIIDENTITY              ((u16)0xFD02)
> > +#define HFA384x_RID_PRISUPRANGE              ((u16)0xFD03)
> > +#define HFA384x_RID_PRI_CFIACTRANGES ((u16)0xFD04)
> > +#define HFA384x_RID_NICSERIALNUMBER  ((u16)0xFD0A)
> > +#define HFA384x_RID_NICIDENTITY              ((u16)0xFD0B)
> > +#define HFA384x_RID_MFISUPRANGE              ((u16)0xFD0C)
> > +#define HFA384x_RID_CFISUPRANGE              ((u16)0xFD0D)
> > +#define HFA384x_RID_STAIDENTITY              ((u16)0xFD20)
> > +#define HFA384x_RID_STASUPRANGE              ((u16)0xFD21)
> > +#define HFA384x_RID_STA_MFIACTRANGES ((u16)0xFD22)
> > +#define HFA384x_RID_STA_CFIACTRANGES ((u16)0xFD23)
> >
> >  /*
> >   * Information RID Lengths: NIC Information
> >   * This is the length of JUST the DATA part of the RID (does not
> >   * include the len or code fields)
> >   */
> > -#define              HFA384x_RID_NICSERIALNUMBER_LEN         ((u16)12)
> > +#define HFA384x_RID_NICSERIALNUMBER_LEN              ((u16)12)
> >
> >  /* Information RIDs:  MAC Information */
> > -#define              HFA384x_RID_PORTSTATUS          ((u16)0xFD40)
> > -#define              HFA384x_RID_CURRENTSSID         ((u16)0xFD41)
> > -#define              HFA384x_RID_CURRENTBSSID        ((u16)0xFD42)
> > -#define              HFA384x_RID_CURRENTTXRATE       ((u16)0xFD44)
> > -#define              HFA384x_RID_SHORTRETRYLIMIT     ((u16)0xFD48)
> > -#define              HFA384x_RID_LONGRETRYLIMIT      ((u16)0xFD49)
> > -#define              HFA384x_RID_MAXTXLIFETIME       ((u16)0xFD4A)
> > -#define              HFA384x_RID_PRIVACYOPTIMP       ((u16)0xFD4F)
> > -#define              HFA384x_RID_DBMCOMMSQUALITY     ((u16)0xFD51)
> > +#define HFA384x_RID_PORTSTATUS               ((u16)0xFD40)
> > +#define HFA384x_RID_CURRENTSSID              ((u16)0xFD41)
> > +#define HFA384x_RID_CURRENTBSSID     ((u16)0xFD42)
> > +#define HFA384x_RID_CURRENTTXRATE    ((u16)0xFD44)
> > +#define HFA384x_RID_SHORTRETRYLIMIT  ((u16)0xFD48)
> > +#define HFA384x_RID_LONGRETRYLIMIT   ((u16)0xFD49)
> > +#define HFA384x_RID_MAXTXLIFETIME    ((u16)0xFD4A)
> > +#define HFA384x_RID_PRIVACYOPTIMP    ((u16)0xFD4F)
> > +#define HFA384x_RID_DBMCOMMSQUALITY  ((u16)0xFD51)
> >
> >  /*
> >   * Information RID Lengths:  MAC Information
> >   * This is the length of JUST the DATA part of the RID (does not
> >   * include the len or code fields)
> >   */
> > -#define              HFA384x_RID_DBMCOMMSQUALITY_LEN  \
> > +#define HFA384x_RID_DBMCOMMSQUALITY_LEN       \
> >       ((u16)sizeof(hfa384x_dbmcommsquality_t))
> > -#define              HFA384x_RID_JOINREQUEST_LEN \
> > +#define HFA384x_RID_JOINREQUEST_LEN \
> >       ((u16)sizeof(hfa384x_JoinRequest_data_t))
> >
> >  /* Information RIDs:  Modem Information */
> > -#define              HFA384x_RID_CURRENTCHANNEL      ((u16)0xFDC1)
> > +#define HFA384x_RID_CURRENTCHANNEL   ((u16)0xFDC1)
> >
> >  /* API ENHANCEMENTS (NOT ALREADY IMPLEMENTED) */
> > -#define              HFA384x_RID_CNFWEPDEFAULTKEYID  ((u16)0xFC23)
> > -#define              HFA384x_RID_CNFWEPDEFAULTKEY0   ((u16)0xFC24)
> > -#define              HFA384x_RID_CNFWEPDEFAULTKEY1   ((u16)0xFC25)
> > -#define              HFA384x_RID_CNFWEPDEFAULTKEY2   ((u16)0xFC26)
> > -#define              HFA384x_RID_CNFWEPDEFAULTKEY3   ((u16)0xFC27)
> > -#define              HFA384x_RID_CNFWEPFLAGS         ((u16)0xFC28)
> > -#define              HFA384x_RID_CNFAUTHENTICATION   ((u16)0xFC2A)
> > -#define              HFA384x_RID_CNFROAMINGMODE      ((u16)0xFC2D)
> > -#define              HFA384x_RID_CNFAPBCNint         ((u16)0xFC33)
> > -#define              HFA384x_RID_CNFDBMADJUST        ((u16)0xFC46)
> > -#define              HFA384x_RID_CNFWPADATA          ((u16)0xFC48)
> > -#define              HFA384x_RID_CNFBASICRATES       ((u16)0xFCB3)
> > -#define              HFA384x_RID_CNFSUPPRATES        ((u16)0xFCB4)
> > -#define              HFA384x_RID_CNFPASSIVESCANCTRL  ((u16)0xFCBA)
> > -#define              HFA384x_RID_TXPOWERMAX          ((u16)0xFCBE)
> > -#define              HFA384x_RID_JOINREQUEST         ((u16)0xFCE2)
> > -#define              HFA384x_RID_AUTHENTICATESTA     ((u16)0xFCE3)
> > -#define              HFA384x_RID_HOSTSCAN            ((u16)0xFCE5)
> > -
> > -#define              HFA384x_RID_CNFWEPDEFAULTKEY_LEN        ((u16)6)
> > -#define              HFA384x_RID_CNFWEP128DEFAULTKEY_LEN     ((u16)14)
> > +#define HFA384x_RID_CNFWEPDEFAULTKEYID       ((u16)0xFC23)
> > +#define HFA384x_RID_CNFWEPDEFAULTKEY0        ((u16)0xFC24)
> > +#define HFA384x_RID_CNFWEPDEFAULTKEY1        ((u16)0xFC25)
> > +#define HFA384x_RID_CNFWEPDEFAULTKEY2        ((u16)0xFC26)
> > +#define HFA384x_RID_CNFWEPDEFAULTKEY3        ((u16)0xFC27)
> > +#define HFA384x_RID_CNFWEPFLAGS              ((u16)0xFC28)
> > +#define HFA384x_RID_CNFAUTHENTICATION        ((u16)0xFC2A)
> > +#define HFA384x_RID_CNFROAMINGMODE   ((u16)0xFC2D)
> > +#define HFA384x_RID_CNFAPBCNint              ((u16)0xFC33)
> > +#define HFA384x_RID_CNFDBMADJUST     ((u16)0xFC46)
> > +#define HFA384x_RID_CNFWPADATA               ((u16)0xFC48)
> > +#define HFA384x_RID_CNFBASICRATES    ((u16)0xFCB3)
> > +#define HFA384x_RID_CNFSUPPRATES     ((u16)0xFCB4)
> > +#define HFA384x_RID_CNFPASSIVESCANCTRL       ((u16)0xFCBA)
> > +#define HFA384x_RID_TXPOWERMAX               ((u16)0xFCBE)
> > +#define HFA384x_RID_JOINREQUEST              ((u16)0xFCE2)
> > +#define HFA384x_RID_AUTHENTICATESTA  ((u16)0xFCE3)
> > +#define HFA384x_RID_HOSTSCAN         ((u16)0xFCE5)
> > +#define HFA384x_RID_CNFWEPDEFAULTKEY_LEN     ((u16)6)
> > +#define HFA384x_RID_CNFWEP128DEFAULTKEY_LEN  ((u16)14)
> >
> >  /* PD Record codes */
> >  #define HFA384x_PDR_PCB_PARTNUM              ((u16)0x0001)
> > @@ -324,14 +323,13 @@
> >
> >  /* Register Test/Get/Set Field macros */
> >
> > -#define              HFA384x_CMD_AINFO_SET(value)
 ((u16)((u16)(value) << 8))
> > -#define              HFA384x_CMD_MACPORT_SET(value)  \
> > +#define HFA384x_CMD_AINFO_SET(value) ((u16)((u16)(value) << 8))
> > +#define HFA384x_CMD_MACPORT_SET(value)       \
> >                       ((u16)HFA384x_CMD_AINFO_SET(value))
> > -#define              HFA384x_CMD_PROGMODE_SET(value) \
> > +#define HFA384x_CMD_PROGMODE_SET(value)      \
> >                       ((u16)HFA384x_CMD_AINFO_SET((u16)value))
> > -#define              HFA384x_CMD_CMDCODE_SET(value)
 ((u16)(value))
> > -
> > -#define              HFA384x_STATUS_RESULT_SET(value)
 (((u16)(value)) << 8)
> > +#define HFA384x_CMD_CMDCODE_SET(value)               ((u16)(value))
> > +#define HFA384x_STATUS_RESULT_SET(value)     (((u16)(value)) << 8)
> >
> >  /* Host Maintained State Info */
> >  #define HFA384x_STATE_PREINIT        0
> > @@ -473,17 +471,17 @@ typedef struct hfa384x_tx_frame {
> >   * Communication Frames: Field Masks for Transmit Frames
> >   */
> >  /* Status Field */
> > -#define              HFA384x_TXSTATUS_ACKERR
((u16)BIT(5))
> > -#define              HFA384x_TXSTATUS_FORMERR
 ((u16)BIT(3))
> > -#define              HFA384x_TXSTATUS_DISCON
((u16)BIT(2))
> > -#define              HFA384x_TXSTATUS_AGEDERR
 ((u16)BIT(1))
> > -#define              HFA384x_TXSTATUS_RETRYERR
((u16)BIT(0))
> > +#define HFA384x_TXSTATUS_ACKERR                      ((u16)BIT(5))
> > +#define HFA384x_TXSTATUS_FORMERR             ((u16)BIT(3))
> > +#define HFA384x_TXSTATUS_DISCON                      ((u16)BIT(2))
> > +#define HFA384x_TXSTATUS_AGEDERR             ((u16)BIT(1))
> > +#define HFA384x_TXSTATUS_RETRYERR            ((u16)BIT(0))
> >  /* Transmit Control Field */
> > -#define              HFA384x_TX_MACPORT
 ((u16)(BIT(10) | \
> > +#define HFA384x_TX_MACPORT                   ((u16)(BIT(10) | \
> >                                                         BIT(9) |
BIT(8)))
> > -#define              HFA384x_TX_STRUCTYPE
 ((u16)(BIT(4) | BIT(3)))
> > -#define              HFA384x_TX_TXEX
((u16)BIT(2))
> > -#define              HFA384x_TX_TXOK
((u16)BIT(1))
> > +#define HFA384x_TX_STRUCTYPE                 ((u16)(BIT(4) | BIT(3)))
> > +#define HFA384x_TX_TXEX                              ((u16)BIT(2))
> > +#define HFA384x_TX_TXOK                              ((u16)BIT(1))
> >  /*
> >   * Communication Frames: Test/Get/Set Field Values for Transmit Frames
> >   */
> > @@ -494,13 +492,13 @@ typedef struct hfa384x_tx_frame {
> >       HFA384x_TXSTATUS_DISCON | HFA384x_TXSTATUS_AGEDERR | \
> >       HFA384x_TXSTATUS_RETRYERR))
> >
> > -#define      HFA384x_TX_SET(v, m, s)         ((((u16)(v)) <<
((u16)(s))) & ((u16)(m)))
> > +#define HFA384x_TX_SET(v, m, s)              ((((u16)(v)) <<
((u16)(s))) & ((u16)(m)))
> >
> > -#define      HFA384x_TX_MACPORT_SET(v)       HFA384x_TX_SET(v,
HFA384x_TX_MACPORT, 8)
> > -#define      HFA384x_TX_STRUCTYPE_SET(v)     HFA384x_TX_SET(v, \
> > +#define HFA384x_TX_MACPORT_SET(v)    HFA384x_TX_SET(v,
HFA384x_TX_MACPORT, 8)
> > +#define HFA384x_TX_STRUCTYPE_SET(v)  HFA384x_TX_SET(v, \
> >                                               HFA384x_TX_STRUCTYPE, 3)
> > -#define      HFA384x_TX_TXEX_SET(v)          HFA384x_TX_SET(v,
HFA384x_TX_TXEX, 2)
> > -#define      HFA384x_TX_TXOK_SET(v)          HFA384x_TX_SET(v,
HFA384x_TX_TXOK, 1)
> > +#define HFA384x_TX_TXEX_SET(v)               HFA384x_TX_SET(v,
HFA384x_TX_TXEX, 2)
> > +#define HFA384x_TX_TXOK_SET(v)               HFA384x_TX_SET(v,
HFA384x_TX_TXOK, 1)
> >  /*
> >   * Communication Frames: Receive Frames
> >   */
> > @@ -536,34 +534,34 @@ typedef struct hfa384x_rx_frame {
> >   */
> >
> >  /* Status Fields */
> > -#define              HFA384x_RXSTATUS_MACPORT
 ((u16)(BIT(10) | \
> > +#define HFA384x_RXSTATUS_MACPORT             ((u16)(BIT(10) | \
> >                                                               BIT(9) | \
> >                                                               BIT(8)))
> > -#define              HFA384x_RXSTATUS_FCSERR
((u16)BIT(0))
> > +#define HFA384x_RXSTATUS_FCSERR                      ((u16)BIT(0))
> >  /*
> >   * Communication Frames: Test/Get/Set Field Values for Receive Frames
> >   */
> > -#define              HFA384x_RXSTATUS_MACPORT_GET(value)
((u16)((((u16)(value)) \
> > +#define HFA384x_RXSTATUS_MACPORT_GET(value)  ((u16)((((u16)(value)) \
> >                                           & HFA384x_RXSTATUS_MACPORT)
>> 8))
> > -#define              HFA384x_RXSTATUS_ISFCSERR(value)
 ((u16)(((u16)(value)) \
> > +#define HFA384x_RXSTATUS_ISFCSERR(value)     ((u16)(((u16)(value)) \
> >                                                 &
HFA384x_RXSTATUS_FCSERR))
> >  /*
> >   * FRAME STRUCTURES: Information Types and Information Frame Structures
> >   *
> >   * Information Types
> >   */
> > -#define              HFA384x_IT_HANDOVERADDR
((u16)0xF000UL)
> > -#define              HFA384x_IT_COMMTALLIES
 ((u16)0xF100UL)
> > -#define              HFA384x_IT_SCANRESULTS
 ((u16)0xF101UL)
> > -#define              HFA384x_IT_CHINFORESULTS
 ((u16)0xF102UL)
> > -#define              HFA384x_IT_HOSTSCANRESULTS
 ((u16)0xF103UL)
> > -#define              HFA384x_IT_LINKSTATUS
((u16)0xF200UL)
> > -#define              HFA384x_IT_ASSOCSTATUS
 ((u16)0xF201UL)
> > -#define              HFA384x_IT_AUTHREQ
 ((u16)0xF202UL)
> > -#define              HFA384x_IT_PSUSERCNT
 ((u16)0xF203UL)
> > -#define              HFA384x_IT_KEYIDCHANGED
((u16)0xF204UL)
> > -#define              HFA384x_IT_ASSOCREQ
((u16)0xF205UL)
> > -#define              HFA384x_IT_MICFAILURE
((u16)0xF206UL)
> > +#define HFA384x_IT_HANDOVERADDR                      ((u16)0xF000UL)
> > +#define HFA384x_IT_COMMTALLIES                       ((u16)0xF100UL)
> > +#define HFA384x_IT_SCANRESULTS                       ((u16)0xF101UL)
> > +#define HFA384x_IT_CHINFORESULTS             ((u16)0xF102UL)
> > +#define HFA384x_IT_HOSTSCANRESULTS           ((u16)0xF103UL)
> > +#define HFA384x_IT_LINKSTATUS                        ((u16)0xF200UL)
> > +#define HFA384x_IT_ASSOCSTATUS                       ((u16)0xF201UL)
> > +#define HFA384x_IT_AUTHREQ                   ((u16)0xF202UL)
> > +#define HFA384x_IT_PSUSERCNT                 ((u16)0xF203UL)
> > +#define HFA384x_IT_KEYIDCHANGED                      ((u16)0xF204UL)
> > +#define HFA384x_IT_ASSOCREQ                  ((u16)0xF205UL)
> > +#define HFA384x_IT_MICFAILURE                        ((u16)0xF206UL)
> >
> >  /*
> >   * Information Frames Structures
> > @@ -1174,7 +1172,7 @@ typedef struct hfa484x_metacmd {
> >       hfa384x_cmdresult_t result;
> >  } hfa384x_metacmd_t;
> >
> > -#define      MAX_GRP_ADDR            32
> > +#define MAX_GRP_ADDR         32
> >  #define WLAN_COMMENT_MAX     80  /* Max. length of user comment
string. */
> >
> >  #define WLAN_AUTH_MAX           60  /* Max. # of authenticated
stations. */
> > --
> > 2.9.2
> >
> > --
> > You received this message because you are subscribed to the Google
Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
https://groups.google.com/d/msgid/outreachy-kernel/e381c46f967b98c2ccbbc9b14147f109f21a5bef.1474110016.git.gs051095%40gmail.com
.
> > For more options, visit https://groups.google.com/d/optout.
> >

--001a114f55d24dbedd053cb3d7c1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Sat, Sep 17, 2016 at 5:57 PM, Julia Lawall &lt;<a href=
=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br>&gt=
;<br>&gt; On Sat, 17 Sep 2016, Gargi Sharma wrote:<br>&gt;<br>&gt; &gt; mod=
ify indentation from two tabs to one space for macros so<br>&gt; &gt; as to=
 follow the kernel coding style guide.<br>&gt;<br>&gt; The first letter of =
the sentence should be capitalized.<br><br>I&#39;m sorry you had to point t=
hat out again. I&#39;ll correct it and send a version 2.<div><br></div><div=
>gargi<br><br>&gt; julia<br>&gt;<br>&gt; &gt;<br>&gt; &gt; Signed-off-by: G=
argi Sharma &lt;<a href=3D"mailto:gs051095@gmail.com">gs051095@gmail.com</a=
>&gt;<br>&gt; &gt; ---<br>&gt; &gt; =C2=A0drivers/staging/wlan-ng/hfa384x.h=
 | 312 +++++++++++++++++++-------------------<br>&gt; &gt; =C2=A01 file cha=
nged, 155 insertions(+), 157 deletions(-)<br>&gt; &gt;<br>&gt; &gt; diff --=
git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h=
<br>&gt; &gt; index 7029253..327d7b8 100644<br>&gt; &gt; --- a/drivers/stag=
ing/wlan-ng/hfa384x.h<br>&gt; &gt; +++ b/drivers/staging/wlan-ng/hfa384x.h<=
br>&gt; &gt; @@ -62,32 +62,32 @@<br>&gt; &gt; =C2=A0#include &lt;linux/usb.=
h&gt;<br>&gt; &gt;<br>&gt; &gt; =C2=A0/* Mins &amp; Maxs */<br>&gt; &gt; -#=
define =C2=A0 =C2=A0 =C2=A0HFA384x_PORTID_MAX =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0((u16)7)<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0HFA3=
84x_NUMPORTS_MAX =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)(HFA384x_PO=
RTID_MAX + 1))<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0HFA384x_PDR_LEN_MA=
X =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)512) /* in bytes, from EK=
 */<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0HFA384x_PDA_RECS_MAX =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)200) /* a guess */<br>&gt; &gt; -#d=
efine =C2=A0 =C2=A0 =C2=A0HFA384x_PDA_LEN_MAX =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 ((u16)1024) /* in bytes, from EK*/<br>&gt; &gt; -#define =C2=
=A0 =C2=A0 =C2=A0HFA384x_SCANRESULT_MAX =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(=
(u16)31)<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0HFA384x_HSCANRESULT_MAX =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)31)<br>&gt; &gt; -#define =C2=A0 =C2=A0 =
=C2=A0HFA384x_CHINFORESULT_MAX =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)16)<br>&gt;=
 &gt; -#define =C2=A0 =C2=A0 =C2=A0HFA384x_RID_GUESSING_MAXLEN =C2=A0 =C2=
=A0 2048 =C2=A0 =C2=A0/* I&#39;m not really sure */<br>&gt; &gt; -#define =
=C2=A0 =C2=A0 =C2=A0HFA384x_RIDDATA_MAXLEN =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0HFA384x_RID_GUESSING_MAXLEN<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0HF=
A384x_USB_RWMEM_MAXLEN =C2=A0 =C2=A0 =C2=A0 =C2=A02048<br>&gt; &gt; +#defin=
e HFA384x_PORTID_MAX =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)7)<br>&gt; &g=
t; +#define HFA384x_NUMPORTS_MAX =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)(HFA384x=
_PORTID_MAX + 1))<br>&gt; &gt; +#define HFA384x_PDR_LEN_MAX =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0((u16)512) /* in bytes, from EK */<br>&gt; &gt; +#defin=
e HFA384x_PDA_RECS_MAX =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)200) /* a guess */=
<br>&gt; &gt; +#define HFA384x_PDA_LEN_MAX =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0((u16)1024) /* in bytes, from EK*/<br>&gt; &gt; +#define HFA384x_SCANRES=
ULT_MAX =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)31)<br>&gt; =
&gt; +#define HFA384x_HSCANRESULT_MAX =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0((u16)31)<br>&gt; &gt; +#define HFA384x_CHINFORESULT_MAX =C2=
=A0 =C2=A0 ((u16)16)<br>&gt; &gt; +#define HFA384x_RID_GUESSING_MAXLEN =C2=
=A02048 =C2=A0 =C2=A0/* I&#39;m not really sure */<br>&gt; &gt; +#define HF=
A384x_RIDDATA_MAXLEN =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 HFA38=
4x_RID_GUESSING_MAXLEN<br>&gt; &gt; +#define HFA384x_USB_RWMEM_MAXLEN =C2=
=A0 =C2=A0 2048<br>&gt; &gt;<br>&gt; &gt; =C2=A0/* Support Constants */<br>=
&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_=
PORTTYPE_IBSS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 ((u16)0)<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0HFA384x_PORTTYPE_BSS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)1)<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_PORTTYPE_PSUEDOIBSS =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)3)<br>&gt; &gt; -#define =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_WEPFLAGS_PRIVINVOKED =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)BIT(0))<br>&gt; &gt; -#define =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_WEPFLAGS_EXCLUDE =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)BIT(1))<br>&gt; &gt; =
-#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_WEPFLAGS_D=
ISABLE_TXCRYPT =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)BIT(4))<br>&gt; &gt; -#defi=
ne =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_WEPFLAGS_DISABLE=
_RXCRYPT =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)BIT(7))<br>&gt; &gt; -#define =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_ROAMMODE_HOSTSCAN_HOST=
ROAM =C2=A0 =C2=A0 =C2=A0((u16)3)<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_PORTSTATUS_DISABLED =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)1)<br>&gt; &gt; -#define =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_RATEBIT_1 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)1)<br>&gt; &g=
t; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_RATEBIT=
_2 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 ((u16)2)<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0HFA384x_RATEBIT_5dot5 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)4)<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_RATEBIT_11 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)8)<br>&gt; &gt; +=
#define HFA384x_PORTTYPE_IBSS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)0)<br>&gt; &gt; +#define HFA384=
x_PORTTYPE_BSS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u1=
6)1)<br>&gt; &gt; +#define HFA384x_PORTTYPE_PSUEDOIBSS =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0((u16)3)<br>&gt; &gt; +#define HFA384x_WEPFLAGS_PRIVINVOKED =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)BIT(0))<br>&gt; &gt; +#define HFA384x_WEP=
FLAGS_EXCLUDE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)BIT(1))<br>&g=
t; &gt; +#define HFA384x_WEPFLAGS_DISABLE_TXCRYPT =C2=A0 =C2=A0 ((u16)BIT(4=
))<br>&gt; &gt; +#define HFA384x_WEPFLAGS_DISABLE_RXCRYPT =C2=A0 =C2=A0 ((u=
16)BIT(7))<br>&gt; &gt; +#define HFA384x_ROAMMODE_HOSTSCAN_HOSTROAM =C2=A0 =
((u16)3)<br>&gt; &gt; +#define HFA384x_PORTSTATUS_DISABLED =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0((u16)1)<br>&gt; &gt; +#define HFA384x_RATEBIT_1 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)1)<br>=
&gt; &gt; +#define HFA384x_RATEBIT_2 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)2)<br>&gt; &gt; +#define HFA384x_RATEB=
IT_5dot5 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0((u16)4)<br>&gt; &gt; +#define HFA384x_RATEBIT_11 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)8)<br>&gt; &g=
t;<br>&gt; &gt; =C2=A0/* MAC Internal memory constants and macros */<br>&gt=
; &gt; =C2=A0/* masks and macros used to manipulate MAC internal memory add=
resses. */<br>&gt; &gt; @@ -105,75 +105,75 @@<br>&gt; &gt; =C2=A0 */<br>&gt=
; &gt;<br>&gt; &gt; =C2=A0/* Mask bits for discarding unwanted pieces in a =
flat address */<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0HFA384x_ADDR_FLAT_AUX_PAGE_MASK (0x007fff80)<br>&gt; &gt; -#de=
fine =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_ADDR_FLAT_AUX_=
OFF_MASK =C2=A0(0x0000007f)<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_ADDR_FLAT_CMD_PAGE_MASK (0xffff0000)<br>&gt=
; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_ADD=
R_FLAT_CMD_OFF_MASK =C2=A0(0x0000ffff)<br>&gt; &gt; +#define HFA384x_ADDR_F=
LAT_AUX_PAGE_MASK =C2=A0 =C2=A0 =C2=A0(0x007fff80)<br>&gt; &gt; +#define HF=
A384x_ADDR_FLAT_AUX_OFF_MASK =C2=A0 =C2=A0 =C2=A0 (0x0000007f)<br>&gt; &gt;=
 +#define HFA384x_ADDR_FLAT_CMD_PAGE_MASK =C2=A0 =C2=A0 =C2=A0(0xffff0000)<=
br>&gt; &gt; +#define HFA384x_ADDR_FLAT_CMD_OFF_MASK =C2=A0 =C2=A0 =C2=A0 (=
0x0000ffff)<br>&gt; &gt;<br>&gt; &gt; =C2=A0/*<br>&gt; &gt; =C2=A0 * Mask b=
its for discarding unwanted pieces in AUX format<br>&gt; &gt; =C2=A0 * 16-b=
it address parts<br>&gt; &gt; =C2=A0 */<br>&gt; &gt; -#define =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_ADDR_AUX_PAGE_MASK =C2=A0 =C2=A0=
 =C2=A0(0xffff)<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0HFA384x_ADDR_AUX_OFF_MASK =C2=A0 =C2=A0 =C2=A0 (0x007f)<br>&gt=
; &gt; +#define HFA384x_ADDR_AUX_PAGE_MASK =C2=A0 (0xffff)<br>&gt; &gt; +#d=
efine HFA384x_ADDR_AUX_OFF_MASK =C2=A0 =C2=A0(0x007f)<br>&gt; &gt;<br>&gt; =
&gt; =C2=A0/* Make a 32-bit flat address from AUX format 16-bit page and of=
fset */<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0HFA384x_ADDR_AUX_MKFLAT(p, o) =C2=A0 \<br>&gt; &gt; +#define HFA384x_ADD=
R_AUX_MKFLAT(p, o) =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>&gt; &gt; =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((((u32)(((u16)(p)) &amp; HFA384x_ADDR_A=
UX_PAGE_MASK)) &lt;&lt; 7) | \<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 ((u32)(((u16)(o)) &amp; HFA384x_ADDR_AUX_OFF_MASK)))<br>&=
gt; &gt;<br>&gt; &gt; =C2=A0/* Make CMD format offset and page from a 32-bi=
t flat address */<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0HFA384x_ADDR_CMD_MKPAGE(f) \<br>&gt; &gt; +#define HFA384x_ADD=
R_CMD_MKPAGE(f) \<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 ((u16)((((u32)(f)) &amp; HFA384x_ADDR_FLAT_CMD_PAGE_MASK) &gt;&gt; 1=
6))<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0H=
FA384x_ADDR_CMD_MKOFF(f) \<br>&gt; &gt; +#define HFA384x_ADDR_CMD_MKOFF(f) =
\<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)(((u3=
2)(f)) &amp; HFA384x_ADDR_FLAT_CMD_OFF_MASK))<br>&gt; &gt;<br>&gt; &gt; =C2=
=A0/* Controller Memory addresses */<br>&gt; &gt; -#define =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA3842_PDA_BASE =C2=A0 =C2=A0 =C2=A0 =C2=
=A0(0x007f0000UL)<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0HFA3841_PDA_BASE =C2=A0 =C2=A0 =C2=A0 =C2=A0(0x003f0000UL)<br>=
&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA3841_=
PDA_BOGUS_BASE =C2=A0(0x00390000UL)<br>&gt; &gt; +#define HFA3842_PDA_BASE =
=C2=A0 =C2=A0 (0x007f0000UL)<br>&gt; &gt; +#define HFA3841_PDA_BASE =C2=A0 =
=C2=A0 (0x003f0000UL)<br>&gt; &gt; +#define HFA3841_PDA_BOGUS_BASE =C2=A0 =
=C2=A0 =C2=A0 (0x00390000UL)<br>&gt; &gt;<br>&gt; &gt; =C2=A0/* Driver Down=
load states */<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0HFA384x_DLSTATE_DISABLED =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A00<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0HFA384x_DLSTATE_RAMENABLED =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A01<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0HFA384x_DLSTATE_FLASHENABLED =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A02<br>&gt; &gt; +#define HFA384x_DLSTATE_DISABLED =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 0<br>&gt; &gt; +#define HFA384x_DLSTATE_RAMENAB=
LED =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1<br>&gt; &gt; +#define HFA384x_DLST=
ATE_FLASHENABLED =C2=A0 =C2=A0 =C2=A0 =C2=A0 2<br>&gt; &gt;<br>&gt; &gt; =
=C2=A0/* Register Field Masks */<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_CMD_AINFO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 ((u16)(BIT(14) | BIT(13) \<br>&gt; &gt; +#define HFA38=
4x_CMD_AINFO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)(BIT(14) | BIT(=
13) \<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | BIT(12) | BIT=
(11) \<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | BIT(10) | BIT=
(9) \<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | BIT(8)))<br>&=
gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_C=
MD_MACPORT =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)(BIT(10) | BIT(9=
) | \<br>&gt; &gt; +#define HFA384x_CMD_MACPORT =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0((u16)(BIT(10) | BIT(9) | \<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 BIT(8)))<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0HFA384x_CMD_PROGMODE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0((u16)(BIT(9) | BIT(8)))<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_CMD_CMDCODE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 ((u16)(BIT(5) | BIT(4) | \<br>&gt; &gt; - =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 BIT(3) | BIT(2) | \<br>&gt; &gt; - =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 BIT(1) | BIT(0)))<br>&gt; &gt; +#define HFA384x_CMD_PROGMODE =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)(BIT(9) | BIT(8)))<br>&gt; &gt; +#define =
HFA384x_CMD_CMDCODE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)(BIT(5) | BIT(4=
) | \<br>&gt; &gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 BIT(3) | BIT(2) | \<br>&gt; &gt; + =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 BIT(1=
) | BIT(0)))<br>&gt; &gt;<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0HFA384x_STATUS_RESULT =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 ((u16)(BIT(14) | BIT(13) \<br>&gt; &gt; +#define HFA384x_STATUS_RESULT =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)(BIT(14) | BIT=
(13) \<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | BIT(12) | BIT=
(11) \<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | BIT(10) | BIT=
(9) \<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | BIT(8)))<br>&=
gt; &gt;<br>&gt; &gt; =C2=A0/* Command Code Constants */<br>&gt; &gt; =C2=
=A0/* Controller Commands */<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_CMDCODE_INIT =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0((u16)0x00)<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0HFA384x_CMDCODE_ENABLE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0((u16)0x01)<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0HFA384x_CMDCODE_DISABLE =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)0x02)<b=
r>&gt; &gt; +#define HFA384x_CMDCODE_INIT =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16=
)0x00)<br>&gt; &gt; +#define HFA384x_CMDCODE_ENABLE =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)0x01)<br>&gt; &gt; +#define HFA384x_CMDCO=
DE_DISABLE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)0x02)<br>&=
gt; &gt;<br>&gt; &gt; =C2=A0/* Regulate Commands */<br>&gt; &gt; -#define =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_CMDCODE_INQ =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)0x11)<br>&gt; &gt; +#define HFA384=
x_CMDCODE_INQ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)0x11)<br>&gt; &gt;<br=
>&gt; &gt; =C2=A0/* Configure Commands */<br>&gt; &gt; -#define =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_CMDCODE_DOWNLD =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0((u16)0x22)<br>&gt; &gt; +#define HFA384x_CMDCODE_DOWNL=
D =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)0x22)<br>&gt; &gt;=
<br>&gt; &gt; =C2=A0/* Debugging Commands */<br>&gt; &gt; -#define =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_CMDCODE_MONITOR =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 ((u16)(0x38))<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_MONITOR_ENABLE =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0((u16)(0x0b))<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0HFA384x_MONITOR_DISABLE =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u=
16)(0x0f))<br>&gt; &gt; +#define HFA384x_CMDCODE_MONITOR =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)(0x38))<br>&gt; &gt; +#define HFA384x_=
MONITOR_ENABLE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)(0x0b=
))<br>&gt; &gt; +#define HFA384x_MONITOR_DISABLE =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0((u16)(0x0f))<br>&gt; &gt;<br>&gt; &gt; =C2=A0/* Re=
sult Codes */<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0HFA384x_CMD_ERR =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 ((u16)(0x7F))<br>&gt; &gt; +#define HFA384x_CMD_ERR =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)(0x7F))=
<br>&gt; &gt;<br>&gt; &gt; =C2=A0/*<br>&gt; &gt; =C2=A0 * =C2=A0 Programmin=
g Modes<br>&gt; &gt; @@ -182,104 +182,103 @@<br>&gt; &gt; =C2=A0 * =C2=A0 M=
ODE 2: Enable non-volatile memory programming<br>&gt; &gt; =C2=A0 * =C2=A0 =
MODE 3: Program non-volatile memory section<br>&gt; &gt; =C2=A0 */<br>&gt; =
&gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_PROGM=
ODE_DISABLE =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)0x00)<br>&gt; &gt; -#define =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_PROGMODE_RAM =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)0x01)<br>&gt; &gt; -#define =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_PROGMODE_NV =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)0x02)<br>&gt; &gt; -#define =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_PROGMODE_NVWRITE =C2=A0 =C2=
=A0 =C2=A0 =C2=A0((u16)0x03)<br>&gt; &gt; +#define HFA384x_PROGMODE_DISABLE=
 =C2=A0 =C2=A0 ((u16)0x00)<br>&gt; &gt; +#define HFA384x_PROGMODE_RAM =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)0x01)<br>&gt; &gt; +#define HFA384x_PROGMODE=
_NV =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)0x02)<br>&gt; &gt; +#define HFA=
384x_PROGMODE_NVWRITE =C2=A0 =C2=A0 ((u16)0x03)<br>&gt; &gt;<br>&gt; &gt; =
=C2=A0/* Record ID Constants */<br>&gt; &gt; =C2=A0/* Configuration RIDs: N=
etwork Parameters, Static Configuration Entities */<br>&gt; &gt; -#define =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_RID_CNFPORTTYPE =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)0xFC00)<br>&gt; &gt; -#define =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_RID_CNFOWNMACADDR =C2=A0 =C2=A0 =
=C2=A0 ((u16)0xFC01)<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0HFA384x_RID_CNFDESIREDSSID =C2=A0 =C2=A0 =C2=A0((u16)0xFC0=
2)<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HF=
A384x_RID_CNFOWNCHANNEL =C2=A0 =C2=A0 =C2=A0 ((u16)0xFC03)<br>&gt; &gt; -#d=
efine =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_RID_CNFOWNSSI=
D =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)0xFC04)<br>&gt; &gt; -#define =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_RID_CNFMAXDATALEN =C2=
=A0 =C2=A0 =C2=A0 ((u16)0xFC07)<br>&gt; &gt; +#define HFA384x_RID_CNFPORTTY=
PE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)0xFC00)<br>&gt; &g=
t; +#define HFA384x_RID_CNFOWNMACADDR =C2=A0 =C2=A0((u16)0xFC01)<br>&gt; &g=
t; +#define HFA384x_RID_CNFDESIREDSSID =C2=A0 ((u16)0xFC02)<br>&gt; &gt; +#=
define HFA384x_RID_CNFOWNCHANNEL =C2=A0 =C2=A0((u16)0xFC03)<br>&gt; &gt; +#=
define HFA384x_RID_CNFOWNSSID =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 ((u16)0xFC04)<br>&gt; &gt; +#define HFA384x_RID_CNFMAXDATALEN =C2=A0 =
=C2=A0((u16)0xFC07)<br>&gt; &gt;<br>&gt; &gt; =C2=A0/*<br>&gt; &gt; =C2=A0 =
* Configuration RID lengths: Network Params, Static Config Entities<br>&gt;=
 &gt; =C2=A0 * This is the length of JUST the DATA part of the RID (does no=
t<br>&gt; &gt; =C2=A0 * include the len or code fields)<br>&gt; &gt; =C2=A0=
 */<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0H=
FA384x_RID_CNFOWNMACADDR_LEN =C2=A0 ((u16)6)<br>&gt; &gt; -#define =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_RID_CNFDESIREDSSID_LEN =C2=
=A0((u16)34)<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0HFA384x_RID_CNFOWNSSID_LEN =C2=A0 =C2=A0 =C2=A0((u16)34)<br>&gt; =
&gt; +#define HFA384x_RID_CNFOWNMACADDR_LEN =C2=A0 =C2=A0 =C2=A0 =C2=A0((u1=
6)6)<br>&gt; &gt; +#define HFA384x_RID_CNFDESIREDSSID_LEN =C2=A0 =C2=A0 =C2=
=A0 ((u16)34)<br>&gt; &gt; +#define HFA384x_RID_CNFOWNSSID_LEN =C2=A0 ((u16=
)34)<br>&gt; &gt;<br>&gt; &gt; =C2=A0/* Configuration RIDs: Network Paramet=
ers, Dynamic Configuration Entities */<br>&gt; &gt; -#define =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_RID_CREATEIBSS =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0((u16)0xFC81)<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_RID_FRAGTHRESH =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0((u16)0xFC82)<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0HFA384x_RID_RTSTHRESH =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 ((u16)0xFC83)<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0HFA384x_RID_TXRATECNTL =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16=
)0xFC84)<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0HFA384x_RID_PROMISCMODE =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)0xFC85)<br>=
&gt; &gt; +#define HFA384x_RID_CREATEIBSS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 ((u16)0xFC81)<br>&gt; &gt; +#define HFA384x_RID_FRAGTHRES=
H =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)0xFC82)<br>&gt; &g=
t; +#define HFA384x_RID_RTSTHRESH =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0((u16)0xFC83)<br>&gt; &gt; +#define HFA384x_RID_TXRATECNTL =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)0xFC84)<br>&gt; &gt;=
 +#define HFA384x_RID_PROMISCMODE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0((u16)0xFC85)<br>&gt; &gt;<br>&gt; &gt; =C2=A0/* Information RIDs: N=
IC Information */<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0HFA384x_RID_MAXLOADTIME =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)0xFD=
00)<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0H=
FA384x_RID_DOWNLOADBUFFER =C2=A0 =C2=A0 =C2=A0((u16)0xFD01)<br>&gt; &gt; -#=
define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_RID_PRIIDENT=
ITY =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)0xFD02)<br>&gt; &gt; -#define =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_RID_PRISUPRANGE =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 ((u16)0xFD03)<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_RID_PRI_CFIACTRANGES =C2=A0 =C2=A0((u16)=
0xFD04)<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0HFA384x_RID_NICSERIALNUMBER =C2=A0 =C2=A0 ((u16)0xFD0A)<br>&gt; &gt; -#d=
efine =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_RID_NICIDENTI=
TY =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)0xFD0B)<br>&gt; &gt; -#define =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_RID_MFISUPRANGE =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 ((u16)0xFD0C)<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_RID_CFISUPRANGE =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 ((u16)0xFD0D)<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0HFA384x_RID_STAIDENTITY =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)0xFD=
20)<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0H=
FA384x_RID_STASUPRANGE =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)0xFD21)<br>&gt; &g=
t; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_RID_STA=
_MFIACTRANGES =C2=A0 =C2=A0((u16)0xFD22)<br>&gt; &gt; -#define =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_RID_STA_CFIACTRANGES =C2=A0 =
=C2=A0((u16)0xFD23)<br>&gt; &gt; +#define HFA384x_RID_MAXLOADTIME =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)0xFD00)<br>&gt; &gt; +#defin=
e HFA384x_RID_DOWNLOADBUFFER =C2=A0 ((u16)0xFD01)<br>&gt; &gt; +#define HFA=
384x_RID_PRIIDENTITY =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)=
0xFD02)<br>&gt; &gt; +#define HFA384x_RID_PRISUPRANGE =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)0xFD03)<br>&gt; &gt; +#define HFA384x_RID_=
PRI_CFIACTRANGES ((u16)0xFD04)<br>&gt; &gt; +#define HFA384x_RID_NICSERIALN=
UMBER =C2=A0((u16)0xFD0A)<br>&gt; &gt; +#define HFA384x_RID_NICIDENTITY =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)0xFD0B)<br>&gt; &gt; +#d=
efine HFA384x_RID_MFISUPRANGE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0((u16)0xFD0C)<br>&gt; &gt; +#define HFA384x_RID_CFISUPRANGE =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)0xFD0D)<br>&gt; &gt; +#define H=
FA384x_RID_STAIDENTITY =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u1=
6)0xFD20)<br>&gt; &gt; +#define HFA384x_RID_STASUPRANGE =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)0xFD21)<br>&gt; &gt; +#define HFA384x_=
RID_STA_MFIACTRANGES ((u16)0xFD22)<br>&gt; &gt; +#define HFA384x_RID_STA_CF=
IACTRANGES ((u16)0xFD23)<br>&gt; &gt;<br>&gt; &gt; =C2=A0/*<br>&gt; &gt; =
=C2=A0 * Information RID Lengths: NIC Information<br>&gt; &gt; =C2=A0 * Thi=
s is the length of JUST the DATA part of the RID (does not<br>&gt; &gt; =C2=
=A0 * include the len or code fields)<br>&gt; &gt; =C2=A0 */<br>&gt; &gt; -=
#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_RID_NICSERI=
ALNUMBER_LEN =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)12)<br>&gt; &gt; +#define HF=
A384x_RID_NICSERIALNUMBER_LEN =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0((u16)12)<br>&gt; &gt;<br>&gt; &gt; =C2=A0/* Information RIDs: =C2=A0MAC=
 Information */<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0HFA384x_RID_PORTSTATUS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16=
)0xFD40)<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0HFA384x_RID_CURRENTSSID =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)0xFD41)<br>=
&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_=
RID_CURRENTBSSID =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)0xFD42)<br>&gt; &gt; -#de=
fine =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_RID_CURRENTTXR=
ATE =C2=A0 =C2=A0 =C2=A0 ((u16)0xFD44)<br>&gt; &gt; -#define =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_RID_SHORTRETRYLIMIT =C2=A0 =C2=A0=
 ((u16)0xFD48)<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0HFA384x_RID_LONGRETRYLIMIT =C2=A0 =C2=A0 =C2=A0((u16)0xFD49)<br>&=
gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_R=
ID_MAXTXLIFETIME =C2=A0 =C2=A0 =C2=A0 ((u16)0xFD4A)<br>&gt; &gt; -#define =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_RID_PRIVACYOPTIMP =
=C2=A0 =C2=A0 =C2=A0 ((u16)0xFD4F)<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_RID_DBMCOMMSQUALITY =C2=A0 =C2=A0 ((=
u16)0xFD51)<br>&gt; &gt; +#define HFA384x_RID_PORTSTATUS =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)0xFD40)<br>&gt; &gt; +#define HFA384x=
_RID_CURRENTSSID =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)0xFD=
41)<br>&gt; &gt; +#define HFA384x_RID_CURRENTBSSID =C2=A0 =C2=A0 ((u16)0xFD=
42)<br>&gt; &gt; +#define HFA384x_RID_CURRENTTXRATE =C2=A0 =C2=A0((u16)0xFD=
44)<br>&gt; &gt; +#define HFA384x_RID_SHORTRETRYLIMIT =C2=A0((u16)0xFD48)<b=
r>&gt; &gt; +#define HFA384x_RID_LONGRETRYLIMIT =C2=A0 ((u16)0xFD49)<br>&gt=
; &gt; +#define HFA384x_RID_MAXTXLIFETIME =C2=A0 =C2=A0((u16)0xFD4A)<br>&gt=
; &gt; +#define HFA384x_RID_PRIVACYOPTIMP =C2=A0 =C2=A0((u16)0xFD4F)<br>&gt=
; &gt; +#define HFA384x_RID_DBMCOMMSQUALITY =C2=A0((u16)0xFD51)<br>&gt; &gt=
;<br>&gt; &gt; =C2=A0/*<br>&gt; &gt; =C2=A0 * Information RID Lengths: =C2=
=A0MAC Information<br>&gt; &gt; =C2=A0 * This is the length of JUST the DAT=
A part of the RID (does not<br>&gt; &gt; =C2=A0 * include the len or code f=
ields)<br>&gt; &gt; =C2=A0 */<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_RID_DBMCOMMSQUALITY_LEN =C2=A0\<br>&gt; =
&gt; +#define HFA384x_RID_DBMCOMMSQUALITY_LEN =C2=A0 =C2=A0 =C2=A0 \<br>&gt=
; &gt; =C2=A0 =C2=A0 =C2=A0 ((u16)sizeof(hfa384x_dbmcommsquality_t))<br>&gt=
; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_RID=
_JOINREQUEST_LEN \<br>&gt; &gt; +#define HFA384x_RID_JOINREQUEST_LEN \<br>&=
gt; &gt; =C2=A0 =C2=A0 =C2=A0 ((u16)sizeof(hfa384x_JoinRequest_data_t))<br>=
&gt; &gt;<br>&gt; &gt; =C2=A0/* Information RIDs: =C2=A0Modem Information *=
/<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA=
384x_RID_CURRENTCHANNEL =C2=A0 =C2=A0 =C2=A0((u16)0xFDC1)<br>&gt; &gt; +#de=
fine HFA384x_RID_CURRENTCHANNEL =C2=A0 ((u16)0xFDC1)<br>&gt; &gt;<br>&gt; &=
gt; =C2=A0/* API ENHANCEMENTS (NOT ALREADY IMPLEMENTED) */<br>&gt; &gt; -#d=
efine =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_RID_CNFWEPDEF=
AULTKEYID =C2=A0((u16)0xFC23)<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_RID_CNFWEPDEFAULTKEY0 =C2=A0 ((u16)0xFC2=
4)<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HF=
A384x_RID_CNFWEPDEFAULTKEY1 =C2=A0 ((u16)0xFC25)<br>&gt; &gt; -#define =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_RID_CNFWEPDEFAULTKEY2 =
=C2=A0 ((u16)0xFC26)<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0HFA384x_RID_CNFWEPDEFAULTKEY3 =C2=A0 ((u16)0xFC27)<br>&gt;=
 &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_RID_=
CNFWEPFLAGS =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)0xFC28)<br>&gt; &gt; -#define=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_RID_CNFAUTHENTICAT=
ION =C2=A0 ((u16)0xFC2A)<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0HFA384x_RID_CNFROAMINGMODE =C2=A0 =C2=A0 =C2=A0((u16)0x=
FC2D)<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0HFA384x_RID_CNFAPBCNint =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)0xFC33)<br>&gt=
; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_RID=
_CNFDBMADJUST =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)0xFC46)<br>&gt; &gt; -#defin=
e =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_RID_CNFWPADATA =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)0xFC48)<br>&gt; &gt; -#define =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_RID_CNFBASICRATES =C2=
=A0 =C2=A0 =C2=A0 ((u16)0xFCB3)<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_RID_CNFSUPPRATES =C2=A0 =C2=A0 =C2=A0 =
=C2=A0((u16)0xFCB4)<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0HFA384x_RID_CNFPASSIVESCANCTRL =C2=A0((u16)0xFCBA)<br>&gt;=
 &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_RID_=
TXPOWERMAX =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)0xFCBE)<br>&gt; &gt; -#d=
efine =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_RID_JOINREQUE=
ST =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)0xFCE2)<br>&gt; &gt; -#define =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_RID_AUTHENTICATESTA =C2=A0=
 =C2=A0 ((u16)0xFCE3)<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0HFA384x_RID_HOSTSCAN =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0((u16)0xFCE5)<br>&gt; &gt; -<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_RID_CNFWEPDEFAULTKEY_LEN =C2=A0 =C2=
=A0 =C2=A0 =C2=A0((u16)6)<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0HFA384x_RID_CNFWEP128DEFAULTKEY_LEN =C2=A0 =C2=A0 ((u1=
6)14)<br>&gt; &gt; +#define HFA384x_RID_CNFWEPDEFAULTKEYID =C2=A0 =C2=A0 =
=C2=A0 ((u16)0xFC23)<br>&gt; &gt; +#define HFA384x_RID_CNFWEPDEFAULTKEY0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)0xFC24)<br>&gt; &gt; +#define HFA384x_RID_=
CNFWEPDEFAULTKEY1 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)0xFC25)<br>&gt; &gt; +#d=
efine HFA384x_RID_CNFWEPDEFAULTKEY2 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)0xFC26=
)<br>&gt; &gt; +#define HFA384x_RID_CNFWEPDEFAULTKEY3 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0((u16)0xFC27)<br>&gt; &gt; +#define HFA384x_RID_CNFWEPFLAGS =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)0xFC28)<br>&gt; &gt; +#defin=
e HFA384x_RID_CNFAUTHENTICATION =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)0xFC2A)<br=
>&gt; &gt; +#define HFA384x_RID_CNFROAMINGMODE =C2=A0 ((u16)0xFC2D)<br>&gt;=
 &gt; +#define HFA384x_RID_CNFAPBCNint =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0((u16)0xFC33)<br>&gt; &gt; +#define HFA384x_RID_CNFDBMADJUST =
=C2=A0 =C2=A0 ((u16)0xFC46)<br>&gt; &gt; +#define HFA384x_RID_CNFWPADATA =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)0xFC48)<br>&gt; &gt;=
 +#define HFA384x_RID_CNFBASICRATES =C2=A0 =C2=A0((u16)0xFCB3)<br>&gt; &gt;=
 +#define HFA384x_RID_CNFSUPPRATES =C2=A0 =C2=A0 ((u16)0xFCB4)<br>&gt; &gt;=
 +#define HFA384x_RID_CNFPASSIVESCANCTRL =C2=A0 =C2=A0 =C2=A0 ((u16)0xFCBA)=
<br>&gt; &gt; +#define HFA384x_RID_TXPOWERMAX =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 ((u16)0xFCBE)<br>&gt; &gt; +#define HFA384x_RID_JOINRE=
QUEST =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)0xFCE2)<br>&gt;=
 &gt; +#define HFA384x_RID_AUTHENTICATESTA =C2=A0((u16)0xFCE3)<br>&gt; &gt;=
 +#define HFA384x_RID_HOSTSCAN =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)0xFCE5)<br=
>&gt; &gt; +#define HFA384x_RID_CNFWEPDEFAULTKEY_LEN =C2=A0 =C2=A0 ((u16)6)=
<br>&gt; &gt; +#define HFA384x_RID_CNFWEP128DEFAULTKEY_LEN =C2=A0((u16)14)<=
br>&gt; &gt;<br>&gt; &gt; =C2=A0/* PD Record codes */<br>&gt; &gt; =C2=A0#d=
efine HFA384x_PDR_PCB_PARTNUM =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0((u16)0x0001)<br>&gt; &gt; @@ -324,14 +323,13 @@<br>&gt; &gt;<br>&gt; &g=
t; =C2=A0/* Register Test/Get/Set Field macros */<br>&gt; &gt;<br>&gt; &gt;=
 -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_CMD_AINFO=
_SET(value) =C2=A0 =C2=A0((u16)((u16)(value) &lt;&lt; 8))<br>&gt; &gt; -#de=
fine =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_CMD_MACPORT_SE=
T(value) =C2=A0\<br>&gt; &gt; +#define HFA384x_CMD_AINFO_SET(value) ((u16)(=
(u16)(value) &lt;&lt; 8))<br>&gt; &gt; +#define HFA384x_CMD_MACPORT_SET(val=
ue) =C2=A0 =C2=A0 =C2=A0 \<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)HFA384x_CMD_AINFO_SET(value=
))<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HF=
A384x_CMD_PROGMODE_SET(value) \<br>&gt; &gt; +#define HFA384x_CMD_PROGMODE_=
SET(value) =C2=A0 =C2=A0 =C2=A0\<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)HFA384x_CMD_AINFO_SE=
T((u16)value))<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0HFA384x_CMD_CMDCODE_SET(value) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
((u16)(value))<br>&gt; &gt; -<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_STATUS_RESULT_SET(value) =C2=A0 =C2=A0 =
=C2=A0 =C2=A0(((u16)(value)) &lt;&lt; 8)<br>&gt; &gt; +#define HFA384x_CMD_=
CMDCODE_SET(value) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)(=
value))<br>&gt; &gt; +#define HFA384x_STATUS_RESULT_SET(value) =C2=A0 =C2=
=A0 (((u16)(value)) &lt;&lt; 8)<br>&gt; &gt;<br>&gt; &gt; =C2=A0/* Host Mai=
ntained State Info */<br>&gt; &gt; =C2=A0#define HFA384x_STATE_PREINIT =C2=
=A0 =C2=A0 =C2=A0 =C2=A00<br>&gt; &gt; @@ -473,17 +471,17 @@ typedef struct=
 hfa384x_tx_frame {<br>&gt; &gt; =C2=A0 * Communication Frames: Field Masks=
 for Transmit Frames<br>&gt; &gt; =C2=A0 */<br>&gt; &gt; =C2=A0/* Status Fi=
eld */<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0HFA384x_TXSTATUS_ACKERR =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 ((u16)BIT(5))<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0HFA384x_TXSTATUS_FORMERR =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0((u16)BIT(3))<br>&gt; &gt; -#define =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_TXSTATUS_DISCON =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)BIT(2))<br>&gt; &gt; -#define =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_TXSTATUS_AGEDERR =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)BIT(1))<br>&gt=
; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_TXS=
TATUS_RETRYERR =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)BIT(0=
))<br>&gt; &gt; +#define HFA384x_TXSTATUS_ACKERR =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)BIT(5))<br>&gt; &=
gt; +#define HFA384x_TXSTATUS_FORMERR =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 ((u16)BIT(3))<br>&gt; &gt; +#define HFA384x_TXSTATUS_DISCON =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)=
BIT(2))<br>&gt; &gt; +#define HFA384x_TXSTATUS_AGEDERR =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 ((u16)BIT(1))<br>&gt; &gt; +#define HFA384x_TXSTATUS_=
RETRYERR =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)BIT(0))<br>&gt; &gt=
; =C2=A0/* Transmit Control Field */<br>&gt; &gt; -#define =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_TX_MACPORT =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)(BIT(10) | \<b=
r>&gt; &gt; +#define HFA384x_TX_MACPORT =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)(BIT(10) | \<br>&gt; &gt; =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 BIT(9) | BIT(8)))<br>&gt; &gt; -#define =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_TX_STRUCTYPE =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)(BIT(4=
) | BIT(3)))<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0HFA384x_TX_TXEX =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)BIT(2))<br>&gt; &gt; -#define =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_TX_TXOK =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16=
)BIT(1))<br>&gt; &gt; +#define HFA384x_TX_STRUCTYPE =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)(BIT(4) | BIT(3)))<br>&gt; &gt; +#=
define HFA384x_TX_TXEX =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)BIT(2))<br>&gt; &=
gt; +#define HFA384x_TX_TXOK =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)BIT(1))<br=
>&gt; &gt; =C2=A0/*<br>&gt; &gt; =C2=A0 * Communication Frames: Test/Get/Se=
t Field Values for Transmit Frames<br>&gt; &gt; =C2=A0 */<br>&gt; &gt; @@ -=
494,13 +492,13 @@ typedef struct hfa384x_tx_frame {<br>&gt; &gt; =C2=A0 =C2=
=A0 =C2=A0 HFA384x_TXSTATUS_DISCON | HFA384x_TXSTATUS_AGEDERR | \<br>&gt; &=
gt; =C2=A0 =C2=A0 =C2=A0 HFA384x_TXSTATUS_RETRYERR))<br>&gt; &gt;<br>&gt; &=
gt; -#define =C2=A0 =C2=A0 =C2=A0HFA384x_TX_SET(v, m, s) =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 ((((u16)(v)) &lt;&lt; ((u16)(s))) &amp; ((u16)(m)))<br>&gt; &gt;=
 +#define HFA384x_TX_SET(v, m, s) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0((((u16)(v)) &lt;&lt; ((u16)(s))) &amp; ((u16)(m)))<br>&gt; &gt;<br>=
&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0HFA384x_TX_MACPORT_SET(v) =C2=A0 =C2=
=A0 =C2=A0 HFA384x_TX_SET(v, HFA384x_TX_MACPORT, 8)<br>&gt; &gt; -#define =
=C2=A0 =C2=A0 =C2=A0HFA384x_TX_STRUCTYPE_SET(v) =C2=A0 =C2=A0 HFA384x_TX_SE=
T(v, \<br>&gt; &gt; +#define HFA384x_TX_MACPORT_SET(v) =C2=A0 =C2=A0HFA384x=
_TX_SET(v, HFA384x_TX_MACPORT, 8)<br>&gt; &gt; +#define HFA384x_TX_STRUCTYP=
E_SET(v) =C2=A0HFA384x_TX_SET(v, \<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 HFA384x_TX_STRU=
CTYPE, 3)<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0HFA384x_TX_TXEX_SET(v) =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_TX_SET(v, HFA384x_TX_TXEX, 2)<br>=
&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0HFA384x_TX_TXOK_SET(v) =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0HFA384x_TX_SET(v, HFA384x_TX_TXOK, 1)<br>&gt; &gt; +#d=
efine HFA384x_TX_TXEX_SET(v) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 HFA384x_TX_SET(v, HFA384x_TX_TXEX, 2)<br>&gt; &gt; +#define HFA384x_TX_=
TXOK_SET(v) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 HFA384x_TX_SET=
(v, HFA384x_TX_TXOK, 1)<br>&gt; &gt; =C2=A0/*<br>&gt; &gt; =C2=A0 * Communi=
cation Frames: Receive Frames<br>&gt; &gt; =C2=A0 */<br>&gt; &gt; @@ -536,3=
4 +534,34 @@ typedef struct hfa384x_rx_frame {<br>&gt; &gt; =C2=A0 */<br>&g=
t; &gt;<br>&gt; &gt; =C2=A0/* Status Fields */<br>&gt; &gt; -#define =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_RXSTATUS_MACPORT =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)(BIT(10) | \<br>&gt; =
&gt; +#define HFA384x_RXSTATUS_MACPORT =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 ((u16)(BIT(10) | \<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 BIT(9) | \<br>&gt; &gt; =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 BIT(8)))<br>&gt; &g=
t; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_RXSTATU=
S_FCSERR =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)BIT(=
0))<br>&gt; &gt; +#define HFA384x_RXSTATUS_FCSERR =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)BIT(0))<br>&gt; &=
gt; =C2=A0/*<br>&gt; &gt; =C2=A0 * Communication Frames: Test/Get/Set Field=
 Values for Receive Frames<br>&gt; &gt; =C2=A0 */<br>&gt; &gt; -#define =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_RXSTATUS_MACPORT_GET(v=
alue) =C2=A0 =C2=A0 ((u16)((((u16)(value)) \<br>&gt; &gt; +#define HFA384x_=
RXSTATUS_MACPORT_GET(value) =C2=A0((u16)((((u16)(value)) \<br>&gt; &gt; =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &amp;=
 HFA384x_RXSTATUS_MACPORT) &gt;&gt; 8))<br>&gt; &gt; -#define =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_RXSTATUS_ISFCSERR(value) =C2=A0 =
=C2=A0 =C2=A0 =C2=A0((u16)(((u16)(value)) \<br>&gt; &gt; +#define HFA384x_R=
XSTATUS_ISFCSERR(value) =C2=A0 =C2=A0 ((u16)(((u16)(value)) \<br>&gt; &gt; =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 &amp; HFA384x_RXSTATUS_FCSERR))<br>&gt; &gt; =C2=A0/*<=
br>&gt; &gt; =C2=A0 * FRAME STRUCTURES: Information Types and Information F=
rame Structures<br>&gt; &gt; =C2=A0 *<br>&gt; &gt; =C2=A0 * Information Typ=
es<br>&gt; &gt; =C2=A0 */<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0HFA384x_IT_HANDOVERADDR =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)0xF000UL)<br>&gt; &gt; -#define =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_IT_COMMTALLIES =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)0xF100UL)<br>&gt;=
 &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_IT_S=
CANRESULTS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((=
u16)0xF101UL)<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0HFA384x_IT_CHINFORESULTS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0((u16)0xF102UL)<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_IT_HOSTSCANRESULTS =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)0xF103UL)<br>&gt; &gt; -#define =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_IT_LINKSTATUS =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)0xF200UL)<br>&gt=
; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_IT_=
ASSOCSTATUS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(=
(u16)0xF201UL)<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0HFA384x_IT_AUTHREQ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)0xF202UL)<br>&gt; &gt; -#define =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_IT_PSUSERCNT =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)0xF203UL)<=
br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA38=
4x_IT_KEYIDCHANGED =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
((u16)0xF204UL)<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0HFA384x_IT_ASSOCREQ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)0xF205UL)<br>&gt; &gt; -#define =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HFA384x_IT_MICFAILURE =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)0xF206UL)<br>&gt=
; &gt; +#define HFA384x_IT_HANDOVERADDR =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)0xF000UL)<br>&gt; &gt; +#def=
ine HFA384x_IT_COMMTALLIES =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)0xF100UL)<br>&gt; &gt; +#define HFA384x_=
IT_SCANRESULTS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 ((u16)0xF101UL)<br>&gt; &gt; +#define HFA384x_IT_CHINFORE=
SULTS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)0xF102UL)<br>&gt; &gt=
; +#define HFA384x_IT_HOSTSCANRESULTS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((=
u16)0xF103UL)<br>&gt; &gt; +#define HFA384x_IT_LINKSTATUS =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)0xF=
200UL)<br>&gt; &gt; +#define HFA384x_IT_ASSOCSTATUS =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)0xF201UL)<br>=
&gt; &gt; +#define HFA384x_IT_AUTHREQ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)0xF202UL)<br>&gt; &gt; +#define HFA384x_I=
T_PSUSERCNT =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((u16)0=
xF203UL)<br>&gt; &gt; +#define HFA384x_IT_KEYIDCHANGED =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)0xF204UL)<br>=
&gt; &gt; +#define HFA384x_IT_ASSOCREQ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0((u16)0xF205UL)<br>&gt; &gt; +#define HFA384x_IT=
_MICFAILURE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0((u16)0xF206UL)<br>&gt; &gt;<br>&gt; &gt; =C2=A0/*<br>&=
gt; &gt; =C2=A0 * Information Frames Structures<br>&gt; &gt; @@ -1174,7 +11=
72,7 @@ typedef struct hfa484x_metacmd {<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =
hfa384x_cmdresult_t result;<br>&gt; &gt; =C2=A0} hfa384x_metacmd_t;<br>&gt;=
 &gt;<br>&gt; &gt; -#define =C2=A0 =C2=A0 =C2=A0MAX_GRP_ADDR =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A032<br>&gt; &gt; +#define MAX_GRP_ADDR =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 32<br>&gt; &gt; =C2=A0#define WLAN_COMMENT_MAX =C2=A0 =C2=
=A0 80 =C2=A0/* Max. length of user comment string. */<br>&gt; &gt;<br>&gt;=
 &gt; =C2=A0#define WLAN_AUTH_MAX =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 60 =C2=
=A0/* Max. # of authenticated stations. */<br>&gt; &gt; --<br>&gt; &gt; 2.9=
.2<br>&gt; &gt;<br>&gt; &gt; --<br>&gt; &gt; You received this message beca=
use you are subscribed to the Google Groups &quot;outreachy-kernel&quot; gr=
oup.<br>&gt; &gt; To unsubscribe from this group and stop receiving emails =
from it, send an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@=
googlegroups.com">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>&gt=
; &gt; To post to this group, send email to <a href=3D"mailto:outreachy-ker=
nel@googlegroups.com">outreachy-kernel@googlegroups.com</a>.<br>&gt; &gt; T=
o view this discussion on the web visit <a href=3D"https://groups.google.co=
m/d/msgid/outreachy-kernel/e381c46f967b98c2ccbbc9b14147f109f21a5bef.1474110=
016.git.gs051095%40gmail.com">https://groups.google.com/d/msgid/outreachy-k=
ernel/e381c46f967b98c2ccbbc9b14147f109f21a5bef.1474110016.git.gs051095%40gm=
ail.com</a>.<br>&gt; &gt; For more options, visit <a href=3D"https://groups=
.google.com/d/optout">https://groups.google.com/d/optout</a>.<br>&gt; &gt;<=
/div></div>

--001a114f55d24dbedd053cb3d7c1--

