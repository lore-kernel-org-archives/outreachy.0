X-GM-THRID: 6401434005655257088
X-Received: by 10.28.158.11 with SMTP id h11mr483914wme.23.1490616154312;
        Mon, 27 Mar 2017 05:02:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.74.84 with SMTP id x81ls1086181lfa.29.gmail; Mon, 27 Mar
 2017 05:02:33 -0700 (PDT)
X-Received: by 10.25.198.86 with SMTP id w83mr2902447lff.28.1490616153101;
        Mon, 27 Mar 2017 05:02:33 -0700 (PDT)
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id l138si42821wmg.0.2017.03.27.05.02.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Mar 2017 05:02:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id 9FEB3E8E95
	for <outreachy-kernel@googlegroups.com>; Mon, 27 Mar 2017 14:02:29 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 804E320511
	for <outreachy-kernel@googlegroups.com>; Mon, 27 Mar 2017 14:02:29 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id 1DDCFA0ABE; Mon, 27 Mar 2017 14:02:14 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-107.2 required=7.5 tests=BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,SMTPAUTH_US,SPF_HELO_FAIL,USER_IN_WHITELIST
	autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 1583CA0FCB
	for <outreachy-kernel@googlegroups.com>; Mon, 27 Mar 2017 14:02:12 +0200 (CEST)
Received: from 192.168.1.13 (192.168.1.13)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/540/antivirus1-rhel7.int);
 Mon, 27 Mar 2017 14:02:12 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/540/antivirus1-rhel7.int)
Received: (qmail 15723 invoked from network); 27 Mar 2017 14:02:08 +0200
Received: from 129.166.216.87.static.jazztel.es (HELO us.es) (1984lsi@87.216.166.129)
  by mail.us.es with AES128-SHA encrypted SMTP; 27 Mar 2017 14:02:08 +0200
Date: Mon, 27 Mar 2017 14:02:09 +0200
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: wensong@linux-vs.org, Simon Horman <horms@verge.net.au>,
	Julian Anastasov <ja@ssi.bg>,
	Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>,
	"David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org,
	lvs-devel@vger.kernel.org, netfilter-devel@vger.kernel.org,
	coreteam@netfilter.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] net: netfilters: Remove extra parenthesis
Message-ID: <20170327120209.GA13666@salvia>
References: <20170325135313.GA10861@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170325135313.GA10861@arushi-HP-Pavilion-Notebook>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

Hi Arushi,

On Sat, Mar 25, 2017 at 07:23:13PM +0530, Arushi Singhal wrote:
> diff --git a/net/netfilter/nf_conntrack_netlink.c b/net/netfilter/nf_conntrack_netlink.c
> index 6806b5e73567..aa344c5868c5 100644
> --- a/net/netfilter/nf_conntrack_netlink.c
> +++ b/net/netfilter/nf_conntrack_netlink.c
> @@ -467,7 +467,7 @@ ctnetlink_fill_info(struct sk_buff *skb, u32 portid, u32 seq, u32 type,
>  	struct nlattr *nest_parms;
>  	unsigned int flags = portid ? NLM_F_MULTI : 0, event;
>  
> -	event = (NFNL_SUBSYS_CTNETLINK << 8 | IPCTNL_MSG_CT_NEW);
> +	event = NFNL_SUBSYS_CTNETLINK << 8 | IPCTNL_MSG_CT_NEW;

Could you send us a unfront patch to add something like:

static inline u16 nfnl_msg_type(u8 subsys, u8 msg_type)
{
        return subsys << 8 | msg_type;
}

I would suggest you place this in include/linux/netfilter/nfnetlink.h

Then, use it here.

>  	nlh = nlmsg_put(skb, portid, seq, event, sizeof(*nfmsg), flags);
>  	if (nlh == NULL)
>  		goto nlmsg_failure;
> @@ -1983,7 +1983,7 @@ ctnetlink_ct_stat_cpu_fill_info(struct sk_buff *skb, u32 portid, u32 seq,
>  	struct nfgenmsg *nfmsg;
>  	unsigned int flags = portid ? NLM_F_MULTI : 0, event;
>  
> -	event = (NFNL_SUBSYS_CTNETLINK << 8 | IPCTNL_MSG_CT_GET_STATS_CPU);
> +	event = NFNL_SUBSYS_CTNETLINK << 8 | IPCTNL_MSG_CT_GET_STATS_CPU;

... And here too.

>  	nlh = nlmsg_put(skb, portid, seq, event, sizeof(*nfmsg), flags);
>  	if (nlh == NULL)
>  		goto nlmsg_failure;
> @@ -2066,7 +2066,7 @@ ctnetlink_stat_ct_fill_info(struct sk_buff *skb, u32 portid, u32 seq, u32 type,
>  	unsigned int flags = portid ? NLM_F_MULTI : 0, event;
>  	unsigned int nr_conntracks = atomic_read(&net->ct.count);
>  
> -	event = (NFNL_SUBSYS_CTNETLINK << 8 | IPCTNL_MSG_CT_GET_STATS);
> +	event = NFNL_SUBSYS_CTNETLINK << 8 | IPCTNL_MSG_CT_GET_STATS;

And so on. Look for more spots where we can replace this opencoded
thing.

I guess there are more spots in all of the net/netfilter/ netlink
subsystems.

Once that patch gets in, you can follow up with this parens cleanup.

Thanks!

P.S: Cc'ing netfilter-devel@vger.kernel.org (and
lvs-devel@vger.kernel.org if you touch 'ipvs' bits) should be fine. No
need to Cc all those many lists, better to narrow down you target.

