Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3678A23B4
	for <outreachy@lists.linux.dev>; Fri, 22 Apr 2022 04:10:43 +0000 (UTC)
Received: by mail-qt1-f182.google.com with SMTP id ay11so4755674qtb.4
        for <outreachy@lists.linux.dev>; Thu, 21 Apr 2022 21:10:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=OMgNqTn6ho2bFEosEsE6JK0JWPAtT4DHYUQ2dvfOe5o=;
        b=YR2/MRrdvSfJpoD46P+ItjFPSbPHYOeM6lOK+gK+/ee3zoguTwiJ7NpZRXFRWNwhPm
         ufBMOMH/KR19UwG07XNeRXvN4gP1LIPc7OrwuTpIZ/RktRfacK6bjXmRM5aP7xM5tNgM
         M4q31x0oBrpd1ALiRXoipdI0NV+QBneEpEvX2zogQ817nK+bAqsouigIaKWBEAJpekNu
         gnBRvCrQ1Mm6+YEKDPKP7hXDpQzGViiK1ZYM1po8gOQHXNqE8fzrp+/bZV+CXZeRdwZa
         zwHl68jHyPMsecFkss8X1sBk4FzOLsMmM5y3h0raeipOZeUmS0xDsyWPtwhtLR6pkILV
         dTNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=OMgNqTn6ho2bFEosEsE6JK0JWPAtT4DHYUQ2dvfOe5o=;
        b=hHmRfPiwKeUmx+2nLzCpC03y9Nc6CobBY6uH44SnhcN5q9Uq6jfoauFAe9OH9ik5jW
         kMK8XieUXj8RGTMS3KrSAn/E9YglQvd0iUb7o89bY4/vQtLJj2tGZed3zb4TFTL0KXyS
         bVAvYevl6BxBi7eDRv3ZL0HFRMUzWYlrhE6udm0J/hq/+M5Umn5IOwXFYNWirRzKQ816
         ziHxdszeXS31R3bsp6WPJ2TepbIyKkj3bv2s2DhSkYXEcrha0fnBvApLuojMeryjPaJG
         EAfIRH2RBEnVime+6PJ2+3J3ltIfj2wrGcE01m+XgSNenJKPUEmP53zq3kWG2Dm7jI8n
         ZUeA==
X-Gm-Message-State: AOAM530OpjyX5OzjGPTrFiZjiO7vejvfjsAX4OpafckFkrQAktXS5TN8
	okqYFGT/KBQ3EqpBAU6iTfbzBKVsECUCnU1P
X-Google-Smtp-Source: ABdhPJzIdUheMLZkr6rEybEiLfHZR95EFk6wWCxM1PdBGWey8IGeRdXcTr1depJjnI8+whoi3RcPjw==
X-Received: by 2002:ac8:110a:0:b0:2f1:ea84:b84 with SMTP id c10-20020ac8110a000000b002f1ea840b84mr1855088qtj.463.1650600641895;
        Thu, 21 Apr 2022 21:10:41 -0700 (PDT)
Received: from jaehee-ThinkPad-X1-Extreme ([2607:fb90:5221:8c6e:8cab:d0f2:32ee:bc71])
        by smtp.gmail.com with ESMTPSA id e126-20020a376984000000b0069c86b28524sm482784qkc.19.2022.04.21.21.10.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Apr 2022 21:10:41 -0700 (PDT)
Date: Fri, 22 Apr 2022 00:10:38 -0400
From: Jaehee Park <jhpark1013@gmail.com>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: outreachy@lists.linux.dev, Julia Denham <jdenham@redhat.com>,
	Roopa Prabhu <roopa.prabhu@gmail.com>
Subject: Re: linux kernel networking project notes
Message-ID: <20220422041038.GA160760@jaehee-ThinkPad-X1-Extreme>
References: <20220419055740.GC413931@jaehee-ThinkPad-X1-Extreme>
 <20220419162351.4fcb547d@elisabeth>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220419162351.4fcb547d@elisabeth>

On Tue, Apr 19, 2022 at 04:23:51PM +0200, Stefano Brivio wrote:
> Jaehee,
> 
> On Tue, 19 Apr 2022 01:57:40 -0400
> Jaehee Park <jhpark1013@gmail.com> wrote:
> 
> > Hi, I'm trying to get comfortable with the tooling around the net-next 
> > tests and have been writing down some notes. Let me know if I'm 
> > misunderstanding things! 
> > 
> > Some notes:
> > 
> > mbuto
> > - builds linux images for VM environments
> > - add tests collections from net-next to run on the image
> 
> ...or any kernel tree, really. Work in progress (mostly by Sevinj at
> this point), you could try it out to test your own changes, if
> something doesn't work please bother me and Sevinj.
> 

Thank you both for helping! 
I wonder if it matters if the tests are always performed in the same 
order? Sometimes in hardware you'd randomize tests but it's probably 
irrelevant here.

> > net-next
> > - tree that contains tests
> 
> ...most kernel trees (https://git.kernel.org/) include the same tests,
> actually -- net-next is simply where new networking features (and
> usually tests) are introduced first.
> 
> > - tests are in net-next/tools/testing/selftest/net
> > 
> > pasta
> 
> This is rather out of scope for the current projects.
> 
> That is, I'm happy if you find it useful or want to contribute to it,
> but that doesn't count toward Outreachy contributions, because it has
> little to do with the kernel. I actually wonder how you even found
> about it :)
> 

Ha! yes I saw it being mentioned in conversations and in the 
mbuto code. I think it's really interesting and will try to learn more

> > - socket transport without needing to create interfaces on the host.
> > - elevated CAP_NET_ADMIN privilege doesn't need to be granted becase 
> >   network interfaces are not created on the host.  
> > - instead, connect to qemu over UNIX domain socket to send and receive 
> >   data (no network interfaces and ip packets).
> 
> ...by the way, that would be "passt", "pasta" uses a tap interface to a
> network namespace (not a VM).
> 
> > - use namespaces (don't need NAT)
> > - no need for layer 2 translations 
> > 
> > linux network stack diagram
> > - https://docs.google.com/presentation/d/1I3b-M8FCmWZCF286ve8mVZ_8bwyl1fdHdSxTKQhwbyM/edit?usp=sharing
> > - with net-next tests, we're operating only in layer 4 (directsly 
> >   between layer 4 sockets) -- ipv4 block in the diagram above.
> 
> That's rather specific for ath10k (a wireless adapter driver).
> Unfortunately I don't have a better suggestion right now.
> 

yea I made this as I was looking over the ath code base
it's not very generalized

> IPv4 is a Layer-3 protocol (https://en.wikipedia.org/wiki/OSI_model).
> The tests are not necessarily operating at Layer 4 (TCP, UDP, etc.),
> but also at Layer 3 (IP, IPv6).
> 
> > arp
> > - known networks are networks that have been through the arp 
> >   request-reply protocol. unknown networks are ones that just announces 
> >   its presence (gratuitous). 
> 
> Hosts, rather than networks. Gratuitous ARP requests, see:
> 	https://en.wikipedia.org/wiki/Address_Resolution_Protocol#ARP_announcements
> 
> if you're referring to the task idea from the project description: the
> network is intended to be "known" (a bit ambiguous, actually) if we
> already asked hosts for their addresses and if that's the reason why we
> have entries in the ARP table.
> 
> If hosts are just announcing themselves, and had no corresponding
> entries in the ARP table, then they weren't previously "known".
> 

Following your response a few more questions came to mind:

Are ARP tables frequently cleared?
If the ARP table was cleared, how does it fill it back up again if the
learning of neighbors only happens for known networks only?

> > -----
> > 
> > I thought a bit about testing for the new knob for arp.
> > The structure for tests would look like:
> > 1. setup namespaces and a veth tunnel across them
> > 2. run test
> > 3. delete the namespaces
> > 
> > where the test would look something like:
> > - setup 2 host namespaces (bob and alice), and a router
> 
> You don't actually need a router because you're not interested in
> creating two separate networks.

Thanks for the clarification! 

> 
> > - We could insert a sentinel after bob's response so that we know can 
> >   filter whatever comes next.  
> 
> Hmm, sorry, I couldn't make sense of this part, but the rest seems to
> make sense:
> 
> > case 1: alice captures pcap, bob broadcasts a gratuitous arp
> > - in the case of gratuitous arp, if a new knob that only allow learning 
> >   from known networks is inplace, pcap should not capture bob's 
> >   broadcasts
> > - assert that the table is not updated with entries, pcap should see no 
> >   sentinel
> > 
> > case 2: alice captures pcap, alice sends arp request, bob replies
> > - this is a normal arp request-reply protocol. pcap should capture 
> >   bob's unicast
> > - assert that the table is updated, pcap should see sentinel and then 
> >   bob's reply
> 
> ...until here.
> 
> > The terminology that I'm familiar with is client and host. Upon reading 
> > some rfc's and other documentation, the mapping seems to be:
> > terminology: host (client), router (ap)
> 
> Forget about WiFi for a moment. :) All hosts are just hosts. No client,
> no server.
> 
> > Sorry to be loading so much information here. 
> > To summarize, I've thought about the arp testing a little and wanted to 
> > write down my understanding. I going through starter tasks now to try 
> > to think of more features for mbuto and the net-next tree. I just got 
> > roopa's email of the tasks that are free -- thank you, i'll work on 
> > them next!
> 
> Yes, I think you should rather start from that one.
> 
> -- 
> Stefano
>

It's interesting to look at the selftests.
When we say "network topology," are we referring to setting up
namespaces and policy routing between them? -- and these topologies are
often reused in scenarios that have same setups?

I am in the process of understanding the modularized setups in the
pmtu.sh script. I'd like to try to extract out the common topologies in
pmtu.sh so that they can be reused in multiple functions. For example,
in test_pmtu_ipv4_dscp_icmp_exception and
test_pmtu_ipv4_dscp_udp_exception, the setup of namespaces and policy
routing, and setting initial MTU values look the same. So they can
possibly be extracted and reused. I'm not sure if this is the right way
of thinking about it. I'll need to research this a bit more.

Thanks!
Jaehee

