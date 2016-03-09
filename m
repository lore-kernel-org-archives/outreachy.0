X-GM-THRID: 6260100746941825024
X-Received: by 10.25.142.130 with SMTP id q124mr4548703lfd.9.1457544524993;
        Wed, 09 Mar 2016 09:28:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.3.9 with SMTP id 9ls421489wmd.39.gmail; Wed, 09 Mar 2016
 09:28:44 -0800 (PST)
X-Received: by 10.28.148.150 with SMTP id w144mr2634392wmd.7.1457544524381;
        Wed, 09 Mar 2016 09:28:44 -0800 (PST)
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id g81si448615wmi.3.2016.03.09.09.28.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Mar 2016 09:28:44 -0800 (PST)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id D23A973FF
	for <outreachy-kernel@googlegroups.com>; Wed,  9 Mar 2016 18:28:43 +0100 (CET)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id C2838DA39D
	for <outreachy-kernel@googlegroups.com>; Wed,  9 Mar 2016 18:28:43 +0100 (CET)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id C1017DA398; Wed,  9 Mar 2016 18:28:43 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-103.2 required=7.5 tests=BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,SMTPAUTH_US,SPF_HELO_FAIL,USER_IN_WHITELIST
	autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 7AC16DA2DE
	for <outreachy-kernel@googlegroups.com>; Wed,  9 Mar 2016 18:28:41 +0100 (CET)
Received: from 192.168.1.13 (192.168.1.13)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/522/antivirus1-rhel7.int);
 Wed, 09 Mar 2016 18:28:41 +0100 (CET)
X-Virus-Status: clean(F-Secure/fsigk_smtp/522/antivirus1-rhel7.int)
Received: (qmail 8341 invoked from network); 9 Mar 2016 18:28:41 +0100
Received: from 129.166.216.87.static.jazztel.es (HELO us.es) (1984lsi@87.216.166.129)
  by mail.us.es with AES128-SHA encrypted SMTP; 9 Mar 2016 18:28:41 +0100
Date: Wed, 9 Mar 2016 18:28:40 +0100
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Bhumika Goyal <bhumirks@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	Shivani Bhardwaj <shivanib134@gmail.com>, netfilter@vger.kernel.org
Subject: Re: [PATCH] extensions: libxt_CONNMARK.c: Add translation to nft
Message-ID: <20160309172840.GA10642@salvia>
References: <1457539133-6410-1-git-send-email-bhumirks@gmail.com>
 <20160309165258.GA1040@salvia>
 <CAOH+1jFQ=yk2oNmAPuT80CmSaq6-5p9b01WQJrn=x66_c7OggA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOH+1jFQ=yk2oNmAPuT80CmSaq6-5p9b01WQJrn=x66_c7OggA@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Wed, Mar 09, 2016 at 10:42:13PM +0530, Bhumika Goyal wrote:
> On Wed, Mar 9, 2016 at 10:22 PM, Pablo Neira Ayuso <pablo@netfilter.org> wrote:
> > On Wed, Mar 09, 2016 at 09:28:53PM +0530, Bhumika Goyal wrote:
> >> Add translation for target CONNMARK to nftables.
> >>
> >> Examples:
> >>
> >> $ sudo iptables-translate -t mangle -A PREROUTING -p tcp  --dport 80 -j CONNMARK --save-mark
> >> nft add rule ip mangle PREROUTING tcp dport 80 counter mark save nfmask 0xffffffff ctmask 0xffffffff
> >>
> >> $ sudo iptables-translate -t mangle -A PREROUTING -p tcp --dport 80 -j CONNMARK --restore-mark --mask 12
> >> nft add rule ip mangle PREROUTING tcp dport 80 counter mark restore nfmask 0xc ctmask 0xc
> >>
> >> $ sudo iptables-translate -t mangle -A PREROUTING -p tcp --dport 22 -j CONNMARK --set-mark 2
> >> nft add rule ip mangle PREROUTING tcp dport 22 counter mark set 0x2/0xffffffff
> >>
> >> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> >> ---
> >>  extensions/libxt_CONNMARK.c | 28 ++++++++++++++++++++++++++++
> >>  1 file changed, 28 insertions(+)
> >>
> >> diff --git a/extensions/libxt_CONNMARK.c b/extensions/libxt_CONNMARK.c
> >> index 42cf207..e2dbf8d 100644
> >> --- a/extensions/libxt_CONNMARK.c
> >> +++ b/extensions/libxt_CONNMARK.c
> >> @@ -347,6 +347,32 @@ connmark_tg_save(const void *ip, const struct xt_entry_target *target)
> >>       }
> >>  }
> >>
> >> +static int
> >> +connmark_tg_xlate(const struct xt_entry_target *target,
> >> +               struct xt_xlate *xl, int numeric)
> >> +{
> >> +     const struct xt_connmark_tginfo1 *info = (const void *)target->data;
> >> +
> >> +     switch (info->mode) {
> >> +     case XT_CONNMARK_SET:
> >> +             xt_xlate_add(xl, "mark set 0x%x/0x%x", info->ctmark, info->ctmask);
> >> +             break;
> >> +     case XT_CONNMARK_SAVE:
> >> +             xt_xlate_add(xl,"mark save nfmask 0x%x ctmask 0x%x",
> >> +                          info->nfmask, info->ctmask);
> >> +             break;
> >> +     case XT_CONNMARK_RESTORE:
> >> +             xt_xlate_add(xl,"mark restore nfmask 0x%x ctmask 0x%x",
> >> +                          info->nfmask, info->ctmask);
> >
> > This translation is not correct.
> >
> 
> Thanks for the feedback. Could you please tell me the mistake as I am
> not able to figure out my mistake?

You have to test your translations, to make sure they work fine with
nft:

# nft add rule filter PREROUTING nft add rule ip mangle PREROUTING tcp dport 80 counter mark restore nfmask 0xc ctmask 0xc
<cmdline>:1:32-34: Error: syntax error, unexpected add
add rule filter PREROUTING nft add rule ip mangle PREROUTING tcp dport
80 counter mark restore nfmask 0xc ctmask 0xc
                               ^^^

This syntax is not correct. Please, have a look at the wiki and
investigate how to translate this. Thanks.

