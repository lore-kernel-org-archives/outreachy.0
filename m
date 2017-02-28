X-GM-THRID: 6390824128052461568
X-Received: by 10.46.88.9 with SMTP id m9mr137102ljb.25.1488271507528;
        Tue, 28 Feb 2017 00:45:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.158.5 with SMTP id h5ls543094wme.27.canary-gmail; Tue, 28
 Feb 2017 00:45:06 -0800 (PST)
X-Received: by 10.223.152.208 with SMTP id w74mr38146wrb.23.1488271506676;
        Tue, 28 Feb 2017 00:45:06 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i76si1035748wmh.1.2017.02.28.00.45.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 00:45:06 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,218,1484002800"; 
   d="scan'208";a="214962256"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Feb 2017 09:45:05 +0100
Date: Tue, 28 Feb 2017 09:44:57 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, arnaud.patard@rtp-net.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH v6] staging: xgifb: correct the
 multiple line dereference
In-Reply-To: <CA+XqjF9B9dNXb0q2aZTeWMuLPSXh4mqi8LYNyxGvp1=vHw3HYQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1702280939090.3153@hadrien>
References: <20170228050530.GA13332@arushi-HP-Pavilion-Notebook> <20170228055141.GB25790@kroah.com> <CA+XqjF9B9dNXb0q2aZTeWMuLPSXh4mqi8LYNyxGvp1=vHw3HYQ@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1344574885-1488271497=:3153"

--8323329-1344574885-1488271497=:3153
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Tue, 28 Feb 2017, Arushi Singhal wrote:

>
>
> On Tue, Feb 28, 2017 at 11:21 AM, Greg Kroah-Hartman <gregkh@linuxfoundation.org> wrote:
>       On Tue, Feb 28, 2017 at 10:35:30AM +0530, Arushi Singhal wrote:
>       > Error reported by checkpatch.pl as "avoid multiple line dereference".
>       > Addition of new variables to make the code more readable and also to
>       > correct about mentioned error as by itroducing new variables line is
>       > not exceeding 80 characters.
>       >
>       > Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
>       > ---
>       > changes in v6
>       >   - changes done such that no other errors can generate.
>       >   - Improve the coding style.
>       >   - Introduced new variables.
>       >   - type of the variable is changed.
>       >
>       >  drivers/staging/xgifb/XGI_main_26.c | 29 ++++++-----------------------
>       >  drivers/staging/xgifb/vb_setmode.c  | 17 +++++++++++------
>       >  2 files changed, 17 insertions(+), 29 deletions(-)
>       >
>       > diff --git a/drivers/staging/xgifb/XGI_main_26.c b/drivers/staging/xgifb/XGI_main_26.c
>       > index 69ed137337ce..9870ea3b76b4 100644
>       > --- a/drivers/staging/xgifb/XGI_main_26.c
>       > +++ b/drivers/staging/xgifb/XGI_main_26.c
>       > @@ -878,30 +878,13 @@ static void XGIfb_post_setmode(struct xgifb_video_info *xgifb_info)
>       >                       }
>       >
>       >                       if ((filter >= 0) && (filter <= 7)) {
>       > +                             const u8 *f = XGI_TV_filter[filter_tb].filter[filter];
>       >                               pr_debug("FilterTable[%d]-%d: %*ph\n",
>       > -                                      filter_tb, filter,
>       > -                                      4, XGI_TV_filter[filter_tb].
>       > -                                                filter[filter]);
>       > -                             xgifb_reg_set(
>       > -                                     XGIPART2,
>       > -                                     0x35,
>       > -                                     (XGI_TV_filter[filter_tb].
>       > -                                             filter[filter][0]));
>       > -                             xgifb_reg_set(
>       > -                                     XGIPART2,
>       > -                                     0x36,
>       > -                                     (XGI_TV_filter[filter_tb].
>       > -                                             filter[filter][1]));
>       > -                             xgifb_reg_set(
>       > -                                     XGIPART2,
>       > -                                     0x37,
>       > -                                     (XGI_TV_filter[filter_tb].
>       > -                                             filter[filter][2]));
>       > -                             xgifb_reg_set(
>       > -                                     XGIPART2,
>       > -                                     0x38,
>       > -                                     (XGI_TV_filter[filter_tb].
>       > -                                             filter[filter][3]));
>       > +                                      filter_tb, filter, 4, f);
>       > +                             xgifb_reg_set(XGIPART2, 0x35, f[0]);
>       > +                             xgifb_reg_set(XGIPART2, 0x36, f[1]);
>       > +                             xgifb_reg_set(XGIPART2, 0x37, f[2]);
>       > +                             xgifb_reg_set(XGIPART2, 0x38, f[3]);
>       >                       }
>       >               }
>       >       }
>       > diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
>       > index 7c7c8c8f1df3..249a32804c06 100644
>       > --- a/drivers/staging/xgifb/vb_setmode.c
>       > +++ b/drivers/staging/xgifb/vb_setmode.c
>       > @@ -221,8 +221,11 @@ static unsigned char XGI_AjustCRT2Rate(unsigned short ModeIdIndex,
>       >
>       >       for (; XGI330_RefIndex[RefreshRateTableIndex + (*i)].ModeID ==
>       >              tempbx; (*i)--) {
>       > -             infoflag = XGI330_RefIndex[RefreshRateTableIndex + (*i)].
>       > -                             Ext_InfoFlag;
>       > +             unsigned short j;
>       > +
>       > +             j = XGI330_RefIndex[RefreshRateTableIndex + (*i)].Ext_InfoFlag;
>       > +             infoflag = j;
>       > +
>       >               if (infoflag & tempax)
>       >                       return 1;
>
>
> Why are you using a temporary variable 'j' here?  It's not needed at
> all, and just is confusing to read the code now, don't you agree?
>
>
> I am using temporary variable of small size(character) so that when
> I fixed the multiple line dereference then the line number of characters in a line will
> not increase by 80.

I agree with Greg that this is not a readable solution.  Putting the whole
thing on one line would be better, even if it goes over 80 characters.
Having the field on a line by itself is much worse, because then it looks
like a variable name - one doesn't easily see the connection to the
structure.  Hopefully someone will come up with a shorter name for
RefreshRateTableIndex and then the problem will be completely solved.
Maybe ref_table_index?  Although to me ref looks like reference, not
refresh...

julia

>  
>       > @@ -231,8 +234,11 @@ static unsigned char XGI_AjustCRT2Rate(unsigned short ModeIdIndex,
>       >       }0
>       >
>       >       for ((*i) = 0;; (*i)++) {
>       > -             infoflag = XGI330_RefIndex[RefreshRateTableIndex + (*i)].
>       > -                             Ext_InfoFlag;
>       > +             unsigned short m;
>       > +
>       > +             m = XGI330_RefIndex[RefreshRateTableIndex + (*i)].Ext_InfoFlag;
>       > +             infoflag = m;
>       > +
>       >               if (XGI330_RefIndex[RefreshRateTableIndex + (*i)].ModeID
>       >                               != tempbx) {
>       >                       return 0;
>
>       Same here, why add a new variable that isn't used more than once?  You
>       are trying to work around something that doesn't make sense to work
>       around.
>
> Same reason as above.
> Thanks
> Arushi
>  
>       Remember, coding style cleanups are to be done to make the code easier
>       to understand and follow.  Not to blindly follow a perl script that
>       can not think.  Sometimes it is not right...
>
>       thanks,
>
>       greg k-h
>
>
>
>  
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CA%2BXqjF9B9dNXb0q2aZTeWMuLPSXh4mqi8LYNyxGvp1%3DvHw3HYQ%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1344574885-1488271497=:3153--

