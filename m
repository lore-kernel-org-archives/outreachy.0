X-GM-THRID: 6402617093082054656
X-Received: by 10.25.169.141 with SMTP id s135mr4865819lfe.30.1491519134404;
        Thu, 06 Apr 2017 15:52:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.219.12 with SMTP id s12ls2888589lfg.21.gmail; Thu, 06 Apr
 2017 15:52:13 -0700 (PDT)
X-Received: by 10.46.9.196 with SMTP id 187mr3859711ljj.19.1491519133646;
        Thu, 06 Apr 2017 15:52:13 -0700 (PDT)
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id p10si179541wmg.1.2017.04.06.15.52.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Apr 2017 15:52:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id 4E12D137B8E
	for <outreachy-kernel@googlegroups.com>; Fri,  7 Apr 2017 00:52:09 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 3CAD5DA873
	for <outreachy-kernel@googlegroups.com>; Fri,  7 Apr 2017 00:52:09 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id 311B2DA86E; Fri,  7 Apr 2017 00:52:09 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-107.2 required=7.5 tests=BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,RP_MATCHES_RCVD,SMTPAUTH_US,SPF_HELO_FAIL,
	USER_IN_WHITELIST autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 3472CDA848
	for <outreachy-kernel@googlegroups.com>; Fri,  7 Apr 2017 00:52:07 +0200 (CEST)
Received: from 192.168.1.13 (192.168.1.13)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/540/antivirus1-rhel7.int);
 Fri, 07 Apr 2017 00:52:07 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/540/antivirus1-rhel7.int)
Received: (qmail 24615 invoked from network); 7 Apr 2017 00:52:06 +0200
Received: from 1984.lsi.us.es (HELO us.es) (1984lsi@150.214.188.80)
  by mail.us.es with AES128-SHA encrypted SMTP; 7 Apr 2017 00:52:06 +0200
Date: Fri, 7 Apr 2017 00:52:06 +0200
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>, davem@davemloft.net,
	netfilter-devel@vger.kernel.org, coreteam@netfilter.org,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] net: netfilter: Remove typedef from
 "typedef struct bitstr_t".
Message-ID: <20170406225206.GA2714@salvia>
References: <20170328182413.GA14102@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170328182413.GA14102@arushi-HP-Pavilion-Notebook>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Tue, Mar 28, 2017 at 11:54:13PM +0530, Arushi Singhal wrote:
> This patch removes typedefs from struct and renames it from "typedef struct
> bitstr_t" to "struct bitstr" as per kernel coding standards."
> 
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  net/netfilter/nf_conntrack_h323_asn1.c | 80 +++++++++++++++++-----------------
>  1 file changed, 40 insertions(+), 40 deletions(-)
> 
> diff --git a/net/netfilter/nf_conntrack_h323_asn1.c b/net/netfilter/nf_conntrack_h323_asn1.c
> index fb8cf238a76f..4502c0d6071d 100644
> --- a/net/netfilter/nf_conntrack_h323_asn1.c
> +++ b/net/netfilter/nf_conntrack_h323_asn1.c
> @@ -91,41 +91,41 @@ struct field {
>  };
>  
>  /* Bit Stream */
> -typedef struct {
> +struct bitstr {

Same thing here, I'd suggest you use 'struct h323_bitstr' instead.

Thanks!

