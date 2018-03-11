X-GM-THRID: 6531387623906213888
X-Received: by 10.46.22.71 with SMTP id 7mr213258ljw.17.1520750648055;
        Sat, 10 Mar 2018 22:44:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.146.76 with SMTP id v12ls1114672ljg.3.gmail; Sat, 10 Mar
 2018 22:44:06 -0800 (PST)
X-Google-Smtp-Source: AG47ELup08Cj6hFaJvndK+azJZ7Go06BYNGlSGS1s9XOaJENW8odty928s6Aqo9S0GHyIlYEgwzZ
X-Received: by 10.46.87.24 with SMTP id l24mr201514ljb.7.1520750646714;
        Sat, 10 Mar 2018 22:44:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520750646; cv=none;
        d=google.com; s=arc-20160816;
        b=M5yNN4Noz5ZdnpRcff7D8kwxjfuOfZK4L36o6MQDI9B+/QldzZCaD26BEQFBut4LT1
         OdPKYHj64az4XLu/Lx/rGb0aSrMZtVnmYGvlDs+7FUv2twcx8L5w5r4H9/m7J0ISsFM+
         /79mbX97H1ml+6N8kYir65nDFOp62fZjD633ZEhPGjWTfT6M9njei1iIKZ5vWAH7bzwG
         MAfqHAZzuga+CXLHVCQBLmmlFnO3pGzMoPXSlVKqjSgi99T3IdbgEiClKrpgkyMsyi9U
         KyJIbTRHOd4KmHQP+LQEd7BgNXugSjqxiKHAWMTPD8BYw8KyXGOui3/ZvkuJvBDg7V9+
         YPFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=0i7V+v5L8P67xvbcoLCTI1xaLF4LFuzxu85qjeb3HrE=;
        b=LZ+nQYu3qHUuj6SmjwFhZ5YphFDhVVBA6nxQq5lSlr9TOX0glrT2gly538phAfeDyM
         dBcV8wJfE/sQSQpQnFlk//vZ8Dz2iJbH8VPev2Hp3m4v4hd2gDpEuGTch0BbN9rQdkwD
         1plUZ9KzcQsNngpNx22J8oaifQh494J1hgPIr6UBDfLO44IU0jJCg7Rcy4CQqsLlJsRr
         uerbn5Mwrad2i8+T10Fgu1sKgLtMBwIYiAFG8kNo41bvROjpHGzkWSehirf3uDiyApPX
         smQ6IqrIz8hvgzJmQJ7w1qNRsGkns59NfaGHh8+3ZYjB8iG4253D3qt2m4LSguk1SyeI
         Aw9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=e2GuwN4M;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-lf0-x243.google.com (mail-lf0-x243.google.com. [2a00:1450:4010:c07::243])
        by gmr-mx.google.com with ESMTPS id m18-v6si159939lfj.0.2018.03.10.22.44.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Mar 2018 22:44:06 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) client-ip=2a00:1450:4010:c07::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=e2GuwN4M;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x243.google.com with SMTP id q69-v6so18610925lfi.10
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Mar 2018 22:44:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=0i7V+v5L8P67xvbcoLCTI1xaLF4LFuzxu85qjeb3HrE=;
        b=e2GuwN4MA0b7O9zlryQNQbG3pEiHXkpz4Rr5ODVKFvi+oRIDIL1S0GvSEdAxCg59Ds
         Oj3kxPQMobbIfJKbqMKc1hMBQgHv/t/yaPLl85lgClaYIISB/MBDcUJcTr9kTj2m75wi
         E6tLSu5QUVRItzQcP1IL6cRVzOcBmlvYTtYkQ0XSmC3/JHgeNH521ixtvax5A79Imzfg
         D2MsG4C0zN9YFzN1jQJAzLGeHvkGGfuhJBZCRiZ9vGCyTAvV7yfwNv14rhQm9ubYrIjE
         sAABdC7pIFA2YLLLwaEeyVNnDNclFVgxgli69NFNvfRkZAa1nKiDsaRE8TeUlCrbtJ+V
         CmYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=0i7V+v5L8P67xvbcoLCTI1xaLF4LFuzxu85qjeb3HrE=;
        b=Lia7YJ2UpMRI+oN0wReWaguei/+bvlcAOCA651KXXX76id5SWEChw/urN8y49oQyu4
         jh5Yp9dGD9Uamb8pPbQckdmVn/8oISItUai1vU5V0bzZdrOMrMecKqZBCbgWwG+aJ1WM
         rHUvTDodICq1VRzWCE8Svqj8v5dAvn5AhW6shJLssnN4qMbHE5dEZO9/hCW9YqWJlHAg
         KmejgEE1dCAi4cA6ZnoSUftMtufV2+UPMYLoN7lh8PTRglEC1tLlyHYfoXkPkY7pWjeC
         Dk++uN7kZeCqkQtyeZ5wlTSlWGBtiQBo7FXIeICDM70s0ocM+E6JY86rXAYluShdTaD4
         WY4w==
X-Gm-Message-State: AElRT7ET6p2vocAGFeiIhI0KGmwDa6yhqD6ftNG3gmYXEio//K/Ppwp6
	Gi0luZIaOUM0bZNqs1KZvV2FAJVPt6Pq7S80/u8=
X-Received: by 10.46.64.91 with SMTP id n88mr2391097lja.92.1520750646324; Sat,
 10 Mar 2018 22:44:06 -0800 (PST)
MIME-Version: 1.0
Received: by 10.46.129.212 with HTTP; Sat, 10 Mar 2018 22:44:05 -0800 (PST)
In-Reply-To: <CA+XqjF-5-XjEpYeSASm5J+XR2KHxvPDZOD22LYNMcMAcB259sQ@mail.gmail.com>
References: <20180310183906.GA20125@seema-Inspiron-15-3567>
 <CAK-LDb+gvj8mut-_5oA5Ryb72iAMPVX=49239gSCVr2Q6PdgyA@mail.gmail.com> <CA+XqjF-5-XjEpYeSASm5J+XR2KHxvPDZOD22LYNMcMAcB259sQ@mail.gmail.com>
From: Vaishali Thakkar <vthakkar1994@gmail.com>
Date: Sun, 11 Mar 2018 12:14:05 +0530
Message-ID: <CAK-LDb+js1Enr71ELfP9xPa67SUE7hymG=Cr0fwNuc5=qzt-Xw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH Netfilter] net: netfilter: Replace
 printk() with more standardize output format.
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: Pablo Neira Ayuso <pablo@netfilter.org>, Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>, 
	Florian Westphal <fw@strlen.de>, "David S. Miller" <davem@davemloft.net>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Sun, Mar 11, 2018 at 10:11 AM, Arushi Singhal
<arushisinghal19971997@gmail.com> wrote:
>
>
> On Sun, Mar 11, 2018 at 9:11 AM, Vaishali Thakkar <vthakkar1994@gmail.com>
> wrote:
>>
>> On Sun, Mar 11, 2018 at 12:09 AM, Arushi Singhal
>> <arushisinghal19971997@gmail.com> wrote:
>> > printk() is the raw way to print output and should be avoided.
>> >
>> > For drivers with defined "struct device object", dev_*macro() is
>> > prefer and for "struct netdevice object", netdev_*macro() is prefer over
>> > dev_*macro() to standardize the output format within the subsystem.
>> >
>> > If no "struct device object" is defined prefer pr_*macro() over
>> > printk().
>> >
>> > This patch Replace printk having a log level with the appropriate output
>> > format according to the order of preference.
>>
>> Hi Arushi,
>>
>> As mentioned in the IRC chat for Outreachy applicants, please drop
>> outreachy-kernel mailing list while sending patches to other subsystems
>> than drivers/staging to avoid confusion.
>>
> Hello Vaishali
>
> I know, but netfilter is the part of the outreachy project.
>
> Want to clarify if project patches need to be send on kernel mailing list or
> not?

Hi Arushi,

My comment was common for your other patches, not specific to patches
for netfilter. I just happen to comment on your latest patch in my inbox.

I agree with cc'ing outreachy-kernel mailing list when submitting patches
for the netfilter project.

Sorry for the confusion!

>  Arushi
>>
>> Thank you!
>>
>> > Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
>> > ---
>> >  net/netfilter/nf_conntrack_acct.c      | 2 +-
>> >  net/netfilter/nf_conntrack_ecache.c    | 2 +-
>> >  net/netfilter/nf_conntrack_timestamp.c | 2 +-
>> >  net/netfilter/nf_nat_core.c            | 2 +-
>> >  net/netfilter/nfnetlink_queue.c        | 4 ++--
>> >  5 files changed, 6 insertions(+), 6 deletions(-)
>> >
>> > diff --git a/net/netfilter/nf_conntrack_acct.c
>> > b/net/netfilter/nf_conntrack_acct.c
>> > index 8669167..fc7329d 100644
>> > --- a/net/netfilter/nf_conntrack_acct.c
>> > +++ b/net/netfilter/nf_conntrack_acct.c
>> > @@ -80,7 +80,7 @@ static int nf_conntrack_acct_init_sysctl(struct net
>> > *net)
>> >         net->ct.acct_sysctl_header = register_net_sysctl(net,
>> > "net/netfilter",
>> >                                                          table);
>> >         if (!net->ct.acct_sysctl_header) {
>> > -               printk(KERN_ERR "nf_conntrack_acct: can't register to
>> > sysctl.\n");
>> > +               netdev_err(net->loopback_dev, "nf_conntrack_acct: can't
>> > register to sysctl.\n");
>> >                 goto out_register;
>> >         }
>> >         return 0;
>> > diff --git a/net/netfilter/nf_conntrack_ecache.c
>> > b/net/netfilter/nf_conntrack_ecache.c
>> > index caac41a..c1fb296 100644
>> > --- a/net/netfilter/nf_conntrack_ecache.c
>> > +++ b/net/netfilter/nf_conntrack_ecache.c
>> > @@ -372,7 +372,7 @@ static int nf_conntrack_event_init_sysctl(struct net
>> > *net)
>> >         net->ct.event_sysctl_header =
>> >                 register_net_sysctl(net, "net/netfilter", table);
>> >         if (!net->ct.event_sysctl_header) {
>> > -               printk(KERN_ERR "nf_ct_event: can't register to
>> > sysctl.\n");
>> > +               netdev_err(net->loopback_dev, "nf_ct_event: can't
>> > register to sysctl.\n");
>> >                 goto out_register;
>> >         }
>> >         return 0;
>> > diff --git a/net/netfilter/nf_conntrack_timestamp.c
>> > b/net/netfilter/nf_conntrack_timestamp.c
>> > index 4c4734b..abd9fbd 100644
>> > --- a/net/netfilter/nf_conntrack_timestamp.c
>> > +++ b/net/netfilter/nf_conntrack_timestamp.c
>> > @@ -58,7 +58,7 @@ static int nf_conntrack_tstamp_init_sysctl(struct net
>> > *net)
>> >         net->ct.tstamp_sysctl_header = register_net_sysctl(net,
>> > "net/netfilter",
>> >                                                            table);
>> >         if (!net->ct.tstamp_sysctl_header) {
>> > -               printk(KERN_ERR "nf_ct_tstamp: can't register to
>> > sysctl.\n");
>> > +               netdev_err(net->loopback_dev, "nf_ct_tstamp: can't
>> > register to sysctl.\n");
>> >                 goto out_register;
>> >         }
>> >         return 0;
>> > diff --git a/net/netfilter/nf_nat_core.c b/net/netfilter/nf_nat_core.c
>> > index 6c38421..dcda5ac 100644
>> > --- a/net/netfilter/nf_nat_core.c
>> > +++ b/net/netfilter/nf_nat_core.c
>> > @@ -814,7 +814,7 @@ static int __init nf_nat_init(void)
>> >         ret = nf_ct_extend_register(&nat_extend);
>> >         if (ret < 0) {
>> >                 nf_ct_free_hashtable(nf_nat_bysource,
>> > nf_nat_htable_size);
>> > -               printk(KERN_ERR "nf_nat_core: Unable to register
>> > extension\n");
>> > +               pr_err("nf_nat_core: Unable to register extension\n");
>> >                 return ret;
>> >         }
>> >
>> > diff --git a/net/netfilter/nfnetlink_queue.c
>> > b/net/netfilter/nfnetlink_queue.c
>> > index 8bba231..4b4bef5 100644
>> > --- a/net/netfilter/nfnetlink_queue.c
>> > +++ b/net/netfilter/nfnetlink_queue.c
>> > @@ -834,8 +834,8 @@ nfqnl_mangle(void *data, int data_len, struct
>> > nf_queue_entry *e, int diff)
>> >                         nskb = skb_copy_expand(e->skb,
>> > skb_headroom(e->skb),
>> >                                                diff, GFP_ATOMIC);
>> >                         if (!nskb) {
>> > -                               printk(KERN_WARNING "nf_queue: OOM "
>> > -                                     "in mangle, dropping packet\n");
>> > +                               netdev_warn(nskb->dev, "nf_queue: OOM "
>> > +                                           "in mangle, dropping
>> > packet\n");
>> >                                 return -ENOMEM;
>> >                         }
>> >                         kfree_skb(e->skb);
>> > --
>> > 2.7.4
>> >
>> > --
>> > You received this message because you are subscribed to the Google
>> > Groups "outreachy-kernel" group.
>> > To unsubscribe from this group and stop receiving emails from it, send
>> > an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> > To post to this group, send email to outreachy-kernel@googlegroups.com.
>> > To view this discussion on the web visit
>> > https://groups.google.com/d/msgid/outreachy-kernel/20180310183906.GA20125%40seema-Inspiron-15-3567.
>> > For more options, visit https://groups.google.com/d/optout.
>>
>>
>>
>> --
>> Vaishali
>> http://vaishalithakkar.in/
>
>



-- 
Vaishali
http://vaishalithakkar.in/

