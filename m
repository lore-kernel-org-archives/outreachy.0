X-GM-THRID: 6390824128052461568
X-Received: by 10.157.80.148 with SMTP id b20mr432712oth.31.1488274638992;
        Tue, 28 Feb 2017 01:37:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.80.146 with SMTP id b18ls656497oth.10.gmail; Tue, 28 Feb
 2017 01:37:18 -0800 (PST)
X-Received: by 10.200.36.187 with SMTP id s56mr378513qts.40.1488274638616;
        Tue, 28 Feb 2017 01:37:18 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id s64si238796pfk.0.2017.02.28.01.37.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 01:37:18 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id A9482305;
	Tue, 28 Feb 2017 09:37:17 +0000 (UTC)
Date: Tue, 28 Feb 2017 10:37:07 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: arnaud.patard@rtp-net.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v6] staging: xgifb: correct the multiple line dereference
Message-ID: <20170228093707.GA3458@kroah.com>
References: <20170228050530.GA13332@arushi-HP-Pavilion-Notebook>
 <20170228055141.GB25790@kroah.com>
 <CA+XqjF9B9dNXb0q2aZTeWMuLPSXh4mqi8LYNyxGvp1=vHw3HYQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CA+XqjF9B9dNXb0q2aZTeWMuLPSXh4mqi8LYNyxGvp1=vHw3HYQ@mail.gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Tue, Feb 28, 2017 at 01:59:53PM +0530, Arushi Singhal wrote:

Please fix your email client to not send html mail, otherwise the
mailing lists reject them, and your quoting is all messed up :(

> On Tue, Feb 28, 2017 at 11:21 AM, Greg Kroah-Hartman <
> gregkh@linuxfoundation.org> wrote:
> 
>     On Tue, Feb 28, 2017 at 10:35:30AM +0530, Arushi Singhal wrote:
>     > Error reported by checkpatch.pl as "avoid multiple line dereference".
>     > Addition of new variables to make the code more readable and also to
>     > correct about mentioned error as by itroducing new variables line is
>     > not exceeding 80 characters.
>     >
>     > Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
>     > ---
>     > changes in v6
>     >� �- changes done such that no other errors can generate.
>     >� �- Improve the coding style.
>     >� �- Introduced new variables.
>     >� �- type of the variable is changed.
>     >
>     >� drivers/staging/xgifb/XGI_main_26.c | 29 ++++++-----------------------
>     >� drivers/staging/xgifb/vb_setmode.c� | 17 +++++++++++------
>     >� 2 files changed, 17 insertions(+), 29 deletions(-)
>     >
>     > diff --git a/drivers/staging/xgifb/XGI_main_26.c b/drivers/staging/xgifb/
>     XGI_main_26.c
>     > index 69ed137337ce..9870ea3b76b4 100644
>     > --- a/drivers/staging/xgifb/XGI_main_26.c
>     > +++ b/drivers/staging/xgifb/XGI_main_26.c
>     > @@ -878,30 +878,13 @@ static void XGIfb_post_setmode(struct
>     xgifb_video_info *xgifb_info)
>     >� � � � � � � � � � � �}
>     >
>     >� � � � � � � � � � � �if ((filter >= 0) && (filter <= 7)) {
>     > +� � � � � � � � � � � � � � �const u8 *f = XGI_TV_filter[filter_tb].
>     filter[filter];
>     >� � � � � � � � � � � � � � � �pr_debug("FilterTable[%d]-%d: %*ph\n",
>     > -� � � � � � � � � � � � � � � � � � � filter_tb, filter,
>     > -� � � � � � � � � � � � � � � � � � � 4, XGI_TV_filter[filter_tb].
>     > -� � � � � � � � � � � � � � � � � � � � � � � � filter[filter]);
>     > -� � � � � � � � � � � � � � �xgifb_reg_set(
>     > -� � � � � � � � � � � � � � � � � � �XGIPART2,
>     > -� � � � � � � � � � � � � � � � � � �0x35,
>     > -� � � � � � � � � � � � � � � � � � �(XGI_TV_filter[filter_tb].
>     > -� � � � � � � � � � � � � � � � � � � � � � �filter[filter][0]));
>     > -� � � � � � � � � � � � � � �xgifb_reg_set(
>     > -� � � � � � � � � � � � � � � � � � �XGIPART2,
>     > -� � � � � � � � � � � � � � � � � � �0x36,
>     > -� � � � � � � � � � � � � � � � � � �(XGI_TV_filter[filter_tb].
>     > -� � � � � � � � � � � � � � � � � � � � � � �filter[filter][1]));
>     > -� � � � � � � � � � � � � � �xgifb_reg_set(
>     > -� � � � � � � � � � � � � � � � � � �XGIPART2,
>     > -� � � � � � � � � � � � � � � � � � �0x37,
>     > -� � � � � � � � � � � � � � � � � � �(XGI_TV_filter[filter_tb].
>     > -� � � � � � � � � � � � � � � � � � � � � � �filter[filter][2]));
>     > -� � � � � � � � � � � � � � �xgifb_reg_set(
>     > -� � � � � � � � � � � � � � � � � � �XGIPART2,
>     > -� � � � � � � � � � � � � � � � � � �0x38,
>     > -� � � � � � � � � � � � � � � � � � �(XGI_TV_filter[filter_tb].
>     > -� � � � � � � � � � � � � � � � � � � � � � �filter[filter][3]));
>     > +� � � � � � � � � � � � � � � � � � � filter_tb, filter, 4, f);
>     > +� � � � � � � � � � � � � � �xgifb_reg_set(XGIPART2, 0x35, f[0]);
>     > +� � � � � � � � � � � � � � �xgifb_reg_set(XGIPART2, 0x36, f[1]);
>     > +� � � � � � � � � � � � � � �xgifb_reg_set(XGIPART2, 0x37, f[2]);
>     > +� � � � � � � � � � � � � � �xgifb_reg_set(XGIPART2, 0x38, f[3]);
>     >� � � � � � � � � � � �}
>     >� � � � � � � �}
>     >� � � �}
>     > diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/
>     vb_setmode.c
>     > index 7c7c8c8f1df3..249a32804c06 100644
>     > --- a/drivers/staging/xgifb/vb_setmode.c
>     > +++ b/drivers/staging/xgifb/vb_setmode.c
>     > @@ -221,8 +221,11 @@ static unsigned char XGI_AjustCRT2Rate(unsigned
>     short ModeIdIndex,
>     >
>     >� � � �for (; XGI330_RefIndex[RefreshRateTableIndex + (*i)].ModeID ==
>     >� � � � � � � tempbx; (*i)--) {
>     > -� � � � � � �infoflag = XGI330_RefIndex[RefreshRateTableIndex + (*i)].
>     > -� � � � � � � � � � � � � � �Ext_InfoFlag;
>     > +� � � � � � �unsigned short j;
>     > +
>     > +� � � � � � �j = XGI330_RefIndex[RefreshRateTableIndex +
>     (*i)].Ext_InfoFlag;
>     > +� � � � � � �infoflag = j;
>     > +
>     >� � � � � � � �if (infoflag & tempax)
>     >� � � � � � � � � � � �return 1;
> 
> 
>     Why are you using a temporary variable 'j' here?� It's not needed at
>     all, and just is confusing to read the code now, don't you agree?
> 
> I am using temporary variable of small size(character) so that when
> I fixed the multiple line dereference then the line number of characters in a
> line will not increase by 80.

I know _why_ you are doing it, sorry, the point is that it makes no
sense at all to _do_ that.  Please don't just blindly make random code
changes to shut the checkpatch.pl script up.  You have to think, and use
it as a guide.

Remember, coding style changes are to be made to make the code easier to
read and understand by humans, not to quite a random perl script's
output.

thanks,

greg k-h

