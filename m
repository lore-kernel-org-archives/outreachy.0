X-GM-THRID: 6261219545555402752
X-Received: by 10.194.119.66 with SMTP id ks2mr3302626wjb.6.1458001446752;
        Mon, 14 Mar 2016 17:24:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.184.197 with SMTP id i188ls34070wmf.27.gmail; Mon, 14 Mar
 2016 17:24:06 -0700 (PDT)
X-Received: by 10.28.170.65 with SMTP id t62mr2387255wme.6.1458001446253;
        Mon, 14 Mar 2016 17:24:06 -0700 (PDT)
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id c140si799639wmh.1.2016.03.14.17.24.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Mar 2016 17:24:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id C9AD8114F43
	for <outreachy-kernel@googlegroups.com>; Tue, 15 Mar 2016 01:24:05 +0100 (CET)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id BB9B5DA8F7
	for <outreachy-kernel@googlegroups.com>; Tue, 15 Mar 2016 01:24:05 +0100 (CET)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id B0F96DA383; Tue, 15 Mar 2016 01:24:05 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-103.2 required=7.5 tests=BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,SMTPAUTH_US,SPF_HELO_FAIL,USER_IN_WHITELIST
	autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 6BD1DDA8F9
	for <outreachy-kernel@googlegroups.com>; Tue, 15 Mar 2016 01:24:03 +0100 (CET)
Received: from 192.168.1.13 (192.168.1.13)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/522/antivirus1-rhel7.int);
 Tue, 15 Mar 2016 01:24:03 +0100 (CET)
X-Virus-Status: clean(F-Secure/fsigk_smtp/522/antivirus1-rhel7.int)
Received: (qmail 29703 invoked from network); 15 Mar 2016 01:24:03 +0100
Received: from 77.166.216.87.static.jazztel.es (HELO us.es) (1984lsi@87.216.166.77)
  by mail.us.es with AES128-SHA encrypted SMTP; 15 Mar 2016 01:24:03 +0100
Date: Tue, 15 Mar 2016 01:24:02 +0100
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Laura Garcia Liebana <nevola@gmail.com>
Cc: netfilter-devel@vger.kernel.org, shivanib134@gmail.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] extensions: libipt_REJECT: Avoid to print the default
 reject with value in the translation
Message-ID: <20160315002402.GA9588@salvia>
References: <20160312172929.GA15987@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160312172929.GA15987@sonyv>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Sat, Mar 12, 2016 at 06:29:32PM +0100, Laura Garcia Liebana wrote:
> Avoid to print the reject with value in the translation when the value is the default.
> 
> Before this patch:
> 
> $ sudo iptables-translate -A FORWARD -p TCP --dport 22 -j REJECT
> nft add rule ip filter FORWARD tcp dport 22 counter reject with icmp type port-unreachable
> 
> After this patch:
> 
> $ sudo iptables-translate -A FORWARD -p TCP --dport 22 -j REJECT
> nft add rule ip filter FORWARD tcp dport 22 counter reject
> 
> Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
> ---
>  extensions/libipt_REJECT.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/extensions/libipt_REJECT.c b/extensions/libipt_REJECT.c
> index 4148776..0e9b7d7 100644
> --- a/extensions/libipt_REJECT.c
> +++ b/extensions/libipt_REJECT.c
> @@ -17,6 +17,8 @@
>  #define IPT_ICMP_ADMIN_PROHIBITED	IPT_TCP_RESET + 1
>  #endif
>  
> +#define DEFAULT_REJECT_WITH	IPT_ICMP_PORT_UNREACHABLE

This code is rather easy to read so I'd suggest no need to add this
new definition, instead use IPT_ICMP_PORT_UNREACHABLE.

Thanks.

