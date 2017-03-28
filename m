X-GM-THRID: 6402509847805296640
X-Received: by 10.25.153.74 with SMTP id b71mr3779941lfe.23.1490703790492;
        Tue, 28 Mar 2017 05:23:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.168.207 with SMTP id r198ls1338276lfe.14.gmail; Tue, 28 Mar
 2017 05:23:08 -0700 (PDT)
X-Received: by 10.25.190.65 with SMTP id o62mr3723538lff.16.1490703788854;
        Tue, 28 Mar 2017 05:23:08 -0700 (PDT)
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id k74si245049wmd.1.2017.03.28.05.23.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Mar 2017 05:23:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id 6A911C1269
	for <outreachy-kernel@googlegroups.com>; Tue, 28 Mar 2017 14:23:06 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 51A3ABAAAF
	for <outreachy-kernel@googlegroups.com>; Tue, 28 Mar 2017 14:23:06 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id 469F9BAAA6; Tue, 28 Mar 2017 14:23:06 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-107.2 required=7.5 tests=BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,SMTPAUTH_US,SPF_HELO_FAIL,USER_IN_WHITELIST
	autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id D6D75BAAA7
	for <outreachy-kernel@googlegroups.com>; Tue, 28 Mar 2017 14:23:02 +0200 (CEST)
Received: from 192.168.1.13 (192.168.1.13)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/540/antivirus1-rhel7.int);
 Tue, 28 Mar 2017 14:23:02 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/540/antivirus1-rhel7.int)
Received: (qmail 23200 invoked from network); 28 Mar 2017 14:23:01 +0200
Received: from 129.166.216.87.static.jazztel.es (HELO us.es) (1984lsi@87.216.166.129)
  by mail.us.es with AES128-SHA encrypted SMTP; 28 Mar 2017 14:23:01 +0200
Date: Tue, 28 Mar 2017 14:22:51 +0200
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Gargi Sharma <gs051095@gmail.com>
Cc: netfilter-devel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 0/3] ebtables: Constify option struct
Message-ID: <20170328122251.GA1100@salvia>
References: <cover.1490699407.git.gs051095@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1490699407.git.gs051095@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Tue, Mar 28, 2017 at 04:57:48PM +0530, Gargi Sharma wrote:
> The struct option is generally used only to initialise
> fields inside certain structs and is not modified anywhere.
> Done using Coccinelle:
> 
> @r1 disable optional_qualifier@
> identifier s,i;
> position p;
> @@
> 
> static struct option i@p[] ={...};
> 
> @ok1@
> identifier r1.i;
> expression e;
> position p;
> @@
> e = i@p
> 
> @bad@
> position p != {r1.p,ok1.p};
> identifier r1.i;
> @@
> e@i@p
> 
> @depends on !bad disable optional_qualifier@
> identifier r1.i;
> @@
> static
> +const
> struct option i[] = { ... };
> 
> Gargi Sharma (3):
>   ebtables: extensions: Constify option struct
>   ebtables: extensions: Constify option struct
>   ebtables: extensions: Constify option struct

Please, collapse this patches in one single.

They are part of the same logical update and...

>  extensions/ebt_802_3.c    | 2 +-
>  extensions/ebt_among.c    | 2 +-
>  extensions/ebt_arp.c      | 2 +-
>  extensions/ebt_arpreply.c | 2 +-
>  extensions/ebt_inat.c     | 4 ++--
>  extensions/ebt_ip.c       | 2 +-
>  extensions/ebt_limit.c    | 2 +-
>  extensions/ebt_log.c      | 2 +-
>  extensions/ebt_mark.c     | 2 +-
>  extensions/ebt_mark_m.c   | 2 +-
>  extensions/ebt_nat.c      | 4 ++--
>  extensions/ebt_nflog.c    | 2 +-
>  extensions/ebt_pkttype.c  | 2 +-
>  extensions/ebt_redirect.c | 2 +-
>  extensions/ebt_standard.c | 2 +-
>  extensions/ebt_stp.c      | 2 +-
>  extensions/ebt_ulog.c     | 2 +-
>  extensions/ebt_vlan.c     | 2 +-
>  18 files changed, 20 insertions(+), 20 deletions(-)

diffstat shows this update is rather small.

