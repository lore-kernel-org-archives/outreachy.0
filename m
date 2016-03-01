X-GM-THRID: 6256826514740871168
X-Received: by 10.28.158.216 with SMTP id h207mr601118wme.4.1456847381963;
        Tue, 01 Mar 2016 07:49:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.126.3 with SMTP id z3ls666358lfc.54.gmail; Tue, 01 Mar 2016
 07:49:41 -0800 (PST)
X-Received: by 10.112.132.97 with SMTP id ot1mr2403042lbb.10.1456847381312;
        Tue, 01 Mar 2016 07:49:41 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x22b.google.com (mail-wm0-x22b.google.com. [2a00:1450:400c:c09::22b])
        by gmr-mx.google.com with ESMTPS id v68si346781wmd.1.2016.03.01.07.49.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 07:49:41 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::22b as permitted sender) client-ip=2a00:1450:400c:c09::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::22b as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22b.google.com with SMTP id l68so38592038wml.1
        for <outreachy-kernel@googlegroups.com>; Tue, 01 Mar 2016 07:49:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=6mdKpYXJtzA65IHABGPvJrhGQD1xWE8uWDSC6cFfs5I=;
        b=R9nW9GZiF6TAuXroFKynCN/nw38fec3iDW4MBWEx3nd+buqucwaklkA7EetLLu9UWM
         7517e53wpzEjB/w9ByTRVzHbp/j+0EV8rfVJfjwynSST51IbGTJjq3FO+T+EfVyTAdjr
         3TBz4/zKEscC3DVxavaWG2wiF6IvFy84LjOl95ZQjdTkJzMuLJnvmcKbVx14lC2ySrcN
         Ra+v+qRZjUvX3e0dxvLrX0xzXHb7uipRDJZqtaVPmiraa7tA47xNBqIfO9DoZXMNqLG7
         X6fLvYIFbk4E89Ks347/2G4Sv85g1f3pD6tcoIyZSHmLNycOz5YEEQrs1Wt55+z/Flwg
         hFww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=6mdKpYXJtzA65IHABGPvJrhGQD1xWE8uWDSC6cFfs5I=;
        b=O71tN87JyRTnSc57nYMNdv2/+kORn+pl098SgM2KRPu2/B+K4IWnW8oGJEm2qJWHLG
         hNwxrr4qEoyEDw24ehQS6SEkFYsN1ynVSe4qsll+jTga9yQVWyFdNGHff4srySchbZRa
         bkfV2gDdINIqmVCJEZ5PjzA3T/IeEFjdM0YUx+4i/avrAeBRbnmrcDPnCI9USsllqL80
         IMATdcjXj0qWJyvSdRDGpALZnaeVVhBZq/0kAIpcErb4UPkcR1wH1JlIUr6hHccv/BFk
         n+7lDsJQd0ePqYPFCtrqjvvXC1wMYYWnZKSWlHZq5/tphtIh6WNYnasUcW6LFySMZSaK
         3Xrw==
X-Gm-Message-State: AD7BkJJ7g434XCOtkBVl8gG8ZAEhTLzV5kyb6Eri5aw9s0jfS2ABV/gGRZ3PNqRoh8/d6A==
X-Received: by 10.28.72.132 with SMTP id v126mr4814566wma.88.1456847381113;
        Tue, 01 Mar 2016 07:49:41 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (cli-5b7e49a2.wholesale.adamo.es. [91.126.73.162])
        by smtp.gmail.com with ESMTPSA id g1sm634233wmc.0.2016.03.01.07.49.39
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 01 Mar 2016 07:49:39 -0800 (PST)
Date: Tue, 1 Mar 2016 16:49:36 +0100
From: Laura Garcia <nevola@gmail.com>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: Netfilter Development Mailing list <netfilter-devel@vger.kernel.org>,
	Pablo Neira Ayuso <pablo@netfilter.org>,
	Florian Westphal <fw@strlen.de>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] extensions: libxt_statistic: Add
 translation to nft
Message-ID: <20160301154935.GA3838@sonyv>
References: <20160229212216.GA29706@sonyv>
 <CAKHNQQH2sE3A_jV0kuwBaTQZS1Z90RwuRoL+dvhPyCOV=Ev=9w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKHNQQH2sE3A_jV0kuwBaTQZS1Z90RwuRoL+dvhPyCOV=Ev=9w@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Tue, Mar 01, 2016 at 03:21:24PM +0530, Shivani Bhardwaj wrote:
> On Tue, Mar 1, 2016 at 2:52 AM, Laura Garcia Liebana <nevola@gmail.com> wrote:
> 
> Hi Laura,
> 
> > Add translation for random to nftables.
> >
> Here, you are providing translation for module statistic, random is
> just a mode for matching the rule. Please make sure to use correct
> module name in the commit message next time.
> 

Hi Shivani,

The translation is only for random due to the mode nth is not implemented in nft yet.


> > Examples:
> >
> > $ iptables-translate -A INPUT -m statistic --mode random --probability
> > 0.1 -j ACCEPT
> > nft add rule ip filter INPUT meta random 0.10000000009 counter accept
> >
> > $ iptables-translate -A INPUT -m statistic --mode random ! --probability
> > 0.1 -j ACCEPT
> > nft add rule ip filter INPUT meta random != 0.10000000009 counter accept
> >
> 
> The match statistic is not yet supported in nftables, so these
> translations are not going to work. You can track the supported
> extensions here:
> http://wiki.nftables.org/wiki-nftables/index.php/Supported_features_compared_to_xtables,
> you can edit any discrepancies you find on this page.
> 

The nf-next branch includes the random feature and it's working perfectly for me. Should I have to update something in the wiki?


> > Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
> > ---
> >  extensions/libxt_statistic.c | 15 +++++++++++++++
> >  1 file changed, 15 insertions(+)
> >
> > diff --git a/extensions/libxt_statistic.c b/extensions/libxt_statistic.c
> > index b6ae5f5..95d588c 100644
> > --- a/extensions/libxt_statistic.c
> > +++ b/extensions/libxt_statistic.c
> > @@ -133,6 +133,20 @@ static void statistic_save(const void *ip, const struct xt_entry_match *match)
> >         print_match(info, "--");
> >  }
> >
> > +static int statistic_xlate(const struct xt_entry_match *match,
> > +                          struct xt_xlate *xl, int numeric)
> > +{
> > +       const struct xt_statistic_info *info = (void *)match->data;
> > +
> > +       if (info->mode == XT_STATISTIC_MODE_RANDOM) {
> > +               xt_xlate_add(xl, "meta random%s %.11f ",
> > +                            (info->flags & XT_STATISTIC_INVERT) ? " !=" : "",
> > +                            1.0 * info->u.random.probability / 0x80000000);
> > +       }
> > +
> > +       return 1;
> > +}
> > +
> >  static struct xtables_match statistic_match = {
> >         .family         = NFPROTO_UNSPEC,
> >         .name           = "statistic",
> > @@ -145,6 +159,7 @@ static struct xtables_match statistic_match = {
> >         .print          = statistic_print,
> >         .save           = statistic_save,
> >         .x6_options     = statistic_opts,
> > +       .xlate          = statistic_xlate,
> >  };
> >
> The way you've written the code to carry out the translation is correct.

Ok, thanks for your confirmation.

> Please make sure to check your patches with checkpatch to avoid coding
> style errors.
> 

Sure,

Thanks!

> Thanks,
> Shivani
> 
> >  void _init(void)
> > --
> > 2.7.0
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160229212216.GA29706%40sonyv.
> > For more options, visit https://groups.google.com/d/optout.

