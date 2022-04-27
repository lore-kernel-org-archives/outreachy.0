Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AFAD7B
	for <outreachy@lists.linux.dev>; Wed, 27 Apr 2022 15:15:19 +0000 (UTC)
Received: by mail-qt1-f176.google.com with SMTP id t11so1327226qto.11
        for <outreachy@lists.linux.dev>; Wed, 27 Apr 2022 08:15:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=JxJgevkNV8ywK7L0qIZRf5FfLCjyoFXmyJskiR7ZIFY=;
        b=NO0pjjtNZCrAFdAsPFG89nsT81OPIVjqlRacDd2tsPcoqREDLK2jww2rz5nwGF5YrA
         Fx6OEkdkuXZcmnYO6uGWwQHvsFGModT0nolPo9QTJI1UlrYOzsjYvP+wIie/zkD2I064
         2BCVzLIU07J3s8N/E3CUrMKiPAIZqcP6GCf9dwv5Pf07GTbT2kDJbFK5w1ODkjwrZrwu
         D5ExzCLGRg4DTr6fm8s9MukbFUfCENbOldjfSX9u9pLXa3Nf9Qomm2WPHvwRpgr6w6D9
         N9hmFGrTtH+CptKB+SoTRKXYZn7FRSXV9YnrjXygVS735njS7PvI6eWWgp2Dai2pTP/T
         NV1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=JxJgevkNV8ywK7L0qIZRf5FfLCjyoFXmyJskiR7ZIFY=;
        b=EnSafDTOWHR9ejLvKHDOogAond2+hBa9dl7H09OK/nRqU5IoVjwi2CoKVsDpz8hi0+
         OIGUbOMzPgAtaltGxaaAFE5QE0conhVDu6gZTEQMKdLqo5x7jJrPyyxu2zr/C0V2dwBY
         h9p4WD30dD2YB9swvoDVw1iJAkl8p+NNXgymY3XKEzGbNwUjXvNhb0FiGehu/jFrPp1F
         8zNJVEyXBoMzzq8mMP2IwVrDLHE9KujFwZV2JU5356FdT6SsKN1exeqee9SXf3HUB4Yb
         8zfBuYICrIdTnJFiLIBFZNIHYNqj8oOlkpm2jBHrdyCDeQGO9MdP7gRNihv8PlICVst8
         Pnbw==
X-Gm-Message-State: AOAM531et4BBibXWq7dHneVyOHVFIlQ+Hv37j/B5JznRhNdfGkz8vgQ2
	Jw3lfDHXwHRhp3yShedBaAM=
X-Google-Smtp-Source: ABdhPJxtHs3uUuYkVMUZUTSiHXebtJjwqD8iBL5GYxyJSymjXr7LiiR2BWgYUn9AKzPWWSWsUrjkoA==
X-Received: by 2002:a05:622a:110:b0:2f3:66b9:c616 with SMTP id u16-20020a05622a011000b002f366b9c616mr11295659qtw.149.1651072518293;
        Wed, 27 Apr 2022 08:15:18 -0700 (PDT)
Received: from jaehee-ThinkPad-X1-Extreme ([4.34.18.218])
        by smtp.gmail.com with ESMTPSA id y25-20020a05620a09d900b0069e82fb9310sm7881380qky.15.2022.04.27.08.15.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Apr 2022 08:15:17 -0700 (PDT)
Date: Wed, 27 Apr 2022 11:15:13 -0400
From: Jaehee Park <jhpark1013@gmail.com>
To: Roopa Prabhu <roopa.prabhu@gmail.com>
Cc: Stefano Brivio <sbrivio@redhat.com>,
	outreachy linux kernel <outreachy@lists.linux.dev>,
	Julia Denham <jdenham@redhat.com>
Subject: Re: linux kernel networking project notes
Message-ID: <20220427151513.GA500625@jaehee-ThinkPad-X1-Extreme>
References: <20220419055740.GC413931@jaehee-ThinkPad-X1-Extreme>
 <20220419162351.4fcb547d@elisabeth>
 <20220422041038.GA160760@jaehee-ThinkPad-X1-Extreme>
 <CAGe6so88qYBcgtC6dgx6rkFrJo5d3uAYpSCvzH9BSma6i5H1eg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAGe6so88qYBcgtC6dgx6rkFrJo5d3uAYpSCvzH9BSma6i5H1eg@mail.gmail.com>

On Sat, Apr 23, 2022 at 09:58:57PM -0700, Roopa Prabhu wrote:
> Jaehee, all great questions, some answers to your last few questions
> inline below..
> 
> On Thu, Apr 21, 2022 at 9:10 PM Jaehee Park <jhpark1013@gmail.com> wrote:
> >
> > On Tue, Apr 19, 2022 at 04:23:51PM +0200, Stefano Brivio wrote:
> > > Jaehee,
> > >
> > > On Tue, 19 Apr 2022 01:57:40 -0400
> > > Jaehee Park <jhpark1013@gmail.com> wrote:
> > >
> > > > Hi, I'm trying to get comfortable with the tooling around the net-next
> > > > tests and have been writing down some notes. Let me know if I'm
> > > > misunderstanding things!
> > > >
> > > > Some notes:
> > > >
> > > > mbuto
> > > > - builds linux images for VM environments
> > > > - add tests collections from net-next to run on the image
> > >
> > > ...or any kernel tree, really. Work in progress (mostly by Sevinj at
> > > this point), you could try it out to test your own changes, if
> > > something doesn't work please bother me and Sevinj.
> > >
> >
> > Thank you both for helping!
> > I wonder if it matters if the tests are always performed in the same
> > order? Sometimes in hardware you'd randomize tests but it's probably
> > irrelevant here.
> >
> > > > net-next
> > > > - tree that contains tests
> > >
> > > ...most kernel trees (https://git.kernel.org/) include the same tests,
> > > actually -- net-next is simply where new networking features (and
> > > usually tests) are introduced first.
> > >
> > > > - tests are in net-next/tools/testing/selftest/net
> > > >
> > > > pasta
> > >
> > > This is rather out of scope for the current projects.
> > >
> > > That is, I'm happy if you find it useful or want to contribute to it,
> > > but that doesn't count toward Outreachy contributions, because it has
> > > little to do with the kernel. I actually wonder how you even found
> > > about it :)
> > >
> >
> > Ha! yes I saw it being mentioned in conversations and in the
> > mbuto code. I think it's really interesting and will try to learn more
> >
> > > > - socket transport without needing to create interfaces on the host.
> > > > - elevated CAP_NET_ADMIN privilege doesn't need to be granted becase
> > > >   network interfaces are not created on the host.
> > > > - instead, connect to qemu over UNIX domain socket to send and receive
> > > >   data (no network interfaces and ip packets).
> > >
> > > ...by the way, that would be "passt", "pasta" uses a tap interface to a
> > > network namespace (not a VM).
> > >
> > > > - use namespaces (don't need NAT)
> > > > - no need for layer 2 translations
> > > >
> > > > linux network stack diagram
> > > > - https://docs.google.com/presentation/d/1I3b-M8FCmWZCF286ve8mVZ_8bwyl1fdHdSxTKQhwbyM/edit?usp=sharing
> > > > - with net-next tests, we're operating only in layer 4 (directsly
> > > >   between layer 4 sockets) -- ipv4 block in the diagram above.
> > >
> > > That's rather specific for ath10k (a wireless adapter driver).
> > > Unfortunately I don't have a better suggestion right now.
> > >
> >
> > yea I made this as I was looking over the ath code base
> > it's not very generalized
> >
> > > IPv4 is a Layer-3 protocol (https://en.wikipedia.org/wiki/OSI_model).
> > > The tests are not necessarily operating at Layer 4 (TCP, UDP, etc.),
> > > but also at Layer 3 (IP, IPv6).
> > >
> > > > arp
> > > > - known networks are networks that have been through the arp
> > > >   request-reply protocol. unknown networks are ones that just announces
> > > >   its presence (gratuitous).
> > >
> > > Hosts, rather than networks. Gratuitous ARP requests, see:
> > >       https://en.wikipedia.org/wiki/Address_Resolution_Protocol#ARP_announcements
> > >
> > > if you're referring to the task idea from the project description: the
> > > network is intended to be "known" (a bit ambiguous, actually) if we
> > > already asked hosts for their addresses and if that's the reason why we
> > > have entries in the ARP table.
> > >
> > > If hosts are just announcing themselves, and had no corresponding
> > > entries in the ARP table, then they weren't previously "known".
> > >
> >
> > Following your response a few more questions came to mind:
> >
> > Are ARP tables frequently cleared?
> 
> yes, arp entries do go through garbage collection. arp timers are configurable.
> https://www.kernel.org/doc/Documentation/networking/ip-sysctl.txt
> (the ones starting with neigh)
> (note that neighbour subsystem is an abstraction under which you have
> per protocol ipv4 arp and ipv6 ndisc subsystems)
> 
> > If the ARP table was cleared, how does it fill it back up again if the
> > learning of neighbors only happens for known networks only?
> 
> the 'known network' here is basically networks the interface is
> already participating in.
> Its similar to arp_filter (also listed in the link above). We need
> arp_filter like filtering for learning from garp entries which does
> not exist today.
> learning from garp is binary today :
> https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git/tree/net/ipv4/arp.c#n875
> learn or not learn.
> eg arp filter https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git/tree/net/ipv4/arp.c#n431
> 
> If the table is flushed, It will get repopulated only when the host
> tries to speak or send out garp requests again.
> switches or network devices are also capable of probing hosts by
> sending arp requests.
> 

Thanks Roopa! This clarifies the biggest question I had.

Thank you for the links to the documentation and relevant functions! 
I'm still studying the arp code that you linked but I'm understanding 
things a lot better! Summary of new learnings below:

- Arp timers are configurable through gc_thresh. The garbage collector 
clears all entries when the number of entries exceeds this threshold 
amount. 
- After the table is flushed, it will get repopulated when the host 
sends out garp requests and gets replies from its known networks 
(those networks have mappings from previous arp communications)
- Switches are also capable of probing hosts by sending arp requests
- Currently, arp_process is binary. We want it to have features (like 
that of arp_filter) for filtering learning from garp entries. 
- arp_filter: network interfaces on the same subnet can be answered 
(via ARP) based on whether or not the kernel would route a packet from 
the ARP'd IP out of that interface. 
- The arp_process function which handles all of our received arp frames 
is using IN_DEV_ARP_ACCEPT macro to check per-interface arp_accept 
configurations. When arp_accept is 1, and is_garp, garp packets 
override existing neigh entries.


> 
> >
> > > > -----
> > > >
> > > > I thought a bit about testing for the new knob for arp.
> > > > The structure for tests would look like:
> > > > 1. setup namespaces and a veth tunnel across them
> > > > 2. run test
> > > > 3. delete the namespaces
> > > >
> > > > where the test would look something like:
> > > > - setup 2 host namespaces (bob and alice), and a router
> > >
> > > You don't actually need a router because you're not interested in
> > > creating two separate networks.
> >
> > Thanks for the clarification!
> >
> > >
> > > > - We could insert a sentinel after bob's response so that we know can
> > > >   filter whatever comes next.
> > >
> > > Hmm, sorry, I couldn't make sense of this part, but the rest seems to
> > > make sense:
> > >
> > > > case 1: alice captures pcap, bob broadcasts a gratuitous arp
> > > > - in the case of gratuitous arp, if a new knob that only allow learning
> > > >   from known networks is inplace, pcap should not capture bob's
> > > >   broadcasts
> > > > - assert that the table is not updated with entries, pcap should see no
> > > >   sentinel
> > > >
> > > > case 2: alice captures pcap, alice sends arp request, bob replies
> > > > - this is a normal arp request-reply protocol. pcap should capture
> > > >   bob's unicast
> > > > - assert that the table is updated, pcap should see sentinel and then
> > > >   bob's reply
> > >
> > > ...until here.
> > >
> > > > The terminology that I'm familiar with is client and host. Upon reading
> > > > some rfc's and other documentation, the mapping seems to be:
> > > > terminology: host (client), router (ap)
> > >
> > > Forget about WiFi for a moment. :) All hosts are just hosts. No client,
> > > no server.
> > >
> > > > Sorry to be loading so much information here.
> > > > To summarize, I've thought about the arp testing a little and wanted to
> > > > write down my understanding. I going through starter tasks now to try
> > > > to think of more features for mbuto and the net-next tree. I just got
> > > > roopa's email of the tasks that are free -- thank you, i'll work on
> > > > them next!
> > >
> > > Yes, I think you should rather start from that one.
> > >
> > > --
> > > Stefano
> > >
> >
> > It's interesting to look at the selftests.
> > When we say "network topology," are we referring to setting up
> > namespaces and policy routing between them? -- and these topologies are
> > often reused in scenarios that have same setups?
> 
> yes, correct. policy routing or simply routing.
> policy routing adds another layer of indirection to regular routing
> (it can be used to override regular routing).
> Not all tests use policy routing
> 
> >
> > I am in the process of understanding the modularized setups in the
> > pmtu.sh script. I'd like to try to extract out the common topologies in
> > pmtu.sh so that they can be reused in multiple functions. For example,
> > in test_pmtu_ipv4_dscp_icmp_exception and
> > test_pmtu_ipv4_dscp_udp_exception, the setup of namespaces and policy
> > routing, and setting initial MTU values look the same. So they can
> > possibly be extracted and reused. I'm not sure if this is the right way
> > of thinking about it. I'll need to research this a bit more.
> >
> you are thinking in  the right direction. But , for the project we
> need to start thinking of beyond this single test.
> There is overlap between topologies used across tests. every new test
> copies an existing test and starts from it
> and so there are groups of tests and their topologies that look
> similar today :). There are a handful of topologies that can serve all
> tests.
> 
> 
> We can certainly brainstorm around this (stefano has some great ideas here)

I realize my understanding of the network interfaces, is off --
thank you for patiently explaining these concepts to me! This is
really helpful to start thinking about the project. In the meantime,
I'll go back to doing the starter tasks and apply your and David's
feedback.

Thanks!
Jaehee
