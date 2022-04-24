Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EED4417D1
	for <outreachy@lists.linux.dev>; Sun, 24 Apr 2022 04:59:11 +0000 (UTC)
Received: by mail-pl1-f170.google.com with SMTP id n8so19931561plh.1
        for <outreachy@lists.linux.dev>; Sat, 23 Apr 2022 21:59:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QISw0tUJ2+sxeo9MygOLt8EtYXIezX/B8ip8FqYFaR4=;
        b=kA2i4XhivBFhHrqnaIvVYty6z787VSoS2nr8qdjK7JzYjCx1NMdUNZY+erGZ6Tbu/D
         Z46PfHe1YDWRcvOkxHKwqn67nHSZtt4a9ekRSZY1J7b/DTnNuL6/V9TCmtlB8QHGuSB1
         Ap4/rXjZKhayxb0YpsE+BHMfev6lxcuW9wCrRD74Ig7fPyF78gZaJNGInCxww2qLWmV4
         /DRkVmflbaW9XZejxU1Roe9jjJlQNt3uAb7NpMkJSu+QJmlFc68B/WOp3O/5f07tpXqb
         XjxmFz4D+aYKNxPNWsLDeTZAwGhxie+LSzUVawFR0VlnM+gCPsPXlN067Ngjy5PduA5W
         h1Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QISw0tUJ2+sxeo9MygOLt8EtYXIezX/B8ip8FqYFaR4=;
        b=oAa64tPLviX5ODw8ajIoUJG3JMij5znup3yE65z4OEHbBQyzNvHqcSk2Pk0KCCG16v
         bAu01GzZvSUGPmyyMi8OTueqJjJLfrIfUDE+uvOYJb3RQz/kDH1hDxtjz1IJlHyQNr8z
         PmfLtpnpWWXUWfxPGR8iQjJz0OniDrHRUKwrfRYxNvuKImXWMKDgG6KrHIk3h7ShQ0fa
         YW9bYl1jq6mpYM4eCET7LT9QOxUP8fYnjur/tRrPgpuhLvWX+8TQKEyF3IUalUp2rIbp
         +nxu7YvRvUfxZKBpQkoo1/JutlA7he9E8kBpCHC1sFCruldbLSReEPtC60IouxArLwTu
         F5Lg==
X-Gm-Message-State: AOAM533qPzZ8thiCNgEq/Ivke61SMhdhCtOkwHgpNEhM+ECAFIIZFg6c
	kc9tF8OqsoltMMku/8Gb5x/5UPjH5SX+xRUeC+A=
X-Google-Smtp-Source: ABdhPJx8JfTVG/JrXNTVTSEtjMld3ia1ITNIqRD/i5NGoC7hXYNVrPRizl3LPKJ9EBFnbIIn1GusKpy/AZBG3Zfo5FQ=
X-Received: by 2002:a17:903:1212:b0:156:3ddc:84bd with SMTP id
 l18-20020a170903121200b001563ddc84bdmr11950560plh.70.1650776351190; Sat, 23
 Apr 2022 21:59:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <20220419055740.GC413931@jaehee-ThinkPad-X1-Extreme>
 <20220419162351.4fcb547d@elisabeth> <20220422041038.GA160760@jaehee-ThinkPad-X1-Extreme>
In-Reply-To: <20220422041038.GA160760@jaehee-ThinkPad-X1-Extreme>
From: Roopa Prabhu <roopa.prabhu@gmail.com>
Date: Sat, 23 Apr 2022 21:58:57 -0700
Message-ID: <CAGe6so88qYBcgtC6dgx6rkFrJo5d3uAYpSCvzH9BSma6i5H1eg@mail.gmail.com>
Subject: Re: linux kernel networking project notes
To: Jaehee Park <jhpark1013@gmail.com>
Cc: Stefano Brivio <sbrivio@redhat.com>, outreachy linux kernel <outreachy@lists.linux.dev>, 
	Julia Denham <jdenham@redhat.com>
Content-Type: text/plain; charset="UTF-8"

Jaehee, all great questions, some answers to your last few questions
inline below..

On Thu, Apr 21, 2022 at 9:10 PM Jaehee Park <jhpark1013@gmail.com> wrote:
>
> On Tue, Apr 19, 2022 at 04:23:51PM +0200, Stefano Brivio wrote:
> > Jaehee,
> >
> > On Tue, 19 Apr 2022 01:57:40 -0400
> > Jaehee Park <jhpark1013@gmail.com> wrote:
> >
> > > Hi, I'm trying to get comfortable with the tooling around the net-next
> > > tests and have been writing down some notes. Let me know if I'm
> > > misunderstanding things!
> > >
> > > Some notes:
> > >
> > > mbuto
> > > - builds linux images for VM environments
> > > - add tests collections from net-next to run on the image
> >
> > ...or any kernel tree, really. Work in progress (mostly by Sevinj at
> > this point), you could try it out to test your own changes, if
> > something doesn't work please bother me and Sevinj.
> >
>
> Thank you both for helping!
> I wonder if it matters if the tests are always performed in the same
> order? Sometimes in hardware you'd randomize tests but it's probably
> irrelevant here.
>
> > > net-next
> > > - tree that contains tests
> >
> > ...most kernel trees (https://git.kernel.org/) include the same tests,
> > actually -- net-next is simply where new networking features (and
> > usually tests) are introduced first.
> >
> > > - tests are in net-next/tools/testing/selftest/net
> > >
> > > pasta
> >
> > This is rather out of scope for the current projects.
> >
> > That is, I'm happy if you find it useful or want to contribute to it,
> > but that doesn't count toward Outreachy contributions, because it has
> > little to do with the kernel. I actually wonder how you even found
> > about it :)
> >
>
> Ha! yes I saw it being mentioned in conversations and in the
> mbuto code. I think it's really interesting and will try to learn more
>
> > > - socket transport without needing to create interfaces on the host.
> > > - elevated CAP_NET_ADMIN privilege doesn't need to be granted becase
> > >   network interfaces are not created on the host.
> > > - instead, connect to qemu over UNIX domain socket to send and receive
> > >   data (no network interfaces and ip packets).
> >
> > ...by the way, that would be "passt", "pasta" uses a tap interface to a
> > network namespace (not a VM).
> >
> > > - use namespaces (don't need NAT)
> > > - no need for layer 2 translations
> > >
> > > linux network stack diagram
> > > - https://docs.google.com/presentation/d/1I3b-M8FCmWZCF286ve8mVZ_8bwyl1fdHdSxTKQhwbyM/edit?usp=sharing
> > > - with net-next tests, we're operating only in layer 4 (directsly
> > >   between layer 4 sockets) -- ipv4 block in the diagram above.
> >
> > That's rather specific for ath10k (a wireless adapter driver).
> > Unfortunately I don't have a better suggestion right now.
> >
>
> yea I made this as I was looking over the ath code base
> it's not very generalized
>
> > IPv4 is a Layer-3 protocol (https://en.wikipedia.org/wiki/OSI_model).
> > The tests are not necessarily operating at Layer 4 (TCP, UDP, etc.),
> > but also at Layer 3 (IP, IPv6).
> >
> > > arp
> > > - known networks are networks that have been through the arp
> > >   request-reply protocol. unknown networks are ones that just announces
> > >   its presence (gratuitous).
> >
> > Hosts, rather than networks. Gratuitous ARP requests, see:
> >       https://en.wikipedia.org/wiki/Address_Resolution_Protocol#ARP_announcements
> >
> > if you're referring to the task idea from the project description: the
> > network is intended to be "known" (a bit ambiguous, actually) if we
> > already asked hosts for their addresses and if that's the reason why we
> > have entries in the ARP table.
> >
> > If hosts are just announcing themselves, and had no corresponding
> > entries in the ARP table, then they weren't previously "known".
> >
>
> Following your response a few more questions came to mind:
>
> Are ARP tables frequently cleared?

yes, arp entries do go through garbage collection. arp timers are configurable.
https://www.kernel.org/doc/Documentation/networking/ip-sysctl.txt
(the ones starting with neigh)
(note that neighbour subsystem is an abstraction under which you have
per protocol ipv4 arp and ipv6 ndisc subsystems)

> If the ARP table was cleared, how does it fill it back up again if the
> learning of neighbors only happens for known networks only?

the 'known network' here is basically networks the interface is
already participating in.
Its similar to arp_filter (also listed in the link above). We need
arp_filter like filtering for learning from garp entries which does
not exist today.
learning from garp is binary today :
https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git/tree/net/ipv4/arp.c#n875
learn or not learn.
eg arp filter https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git/tree/net/ipv4/arp.c#n431

If the table is flushed, It will get repopulated only when the host
tries to speak or send out garp requests again.
switches or network devices are also capable of probing hosts by
sending arp requests.


>
> > > -----
> > >
> > > I thought a bit about testing for the new knob for arp.
> > > The structure for tests would look like:
> > > 1. setup namespaces and a veth tunnel across them
> > > 2. run test
> > > 3. delete the namespaces
> > >
> > > where the test would look something like:
> > > - setup 2 host namespaces (bob and alice), and a router
> >
> > You don't actually need a router because you're not interested in
> > creating two separate networks.
>
> Thanks for the clarification!
>
> >
> > > - We could insert a sentinel after bob's response so that we know can
> > >   filter whatever comes next.
> >
> > Hmm, sorry, I couldn't make sense of this part, but the rest seems to
> > make sense:
> >
> > > case 1: alice captures pcap, bob broadcasts a gratuitous arp
> > > - in the case of gratuitous arp, if a new knob that only allow learning
> > >   from known networks is inplace, pcap should not capture bob's
> > >   broadcasts
> > > - assert that the table is not updated with entries, pcap should see no
> > >   sentinel
> > >
> > > case 2: alice captures pcap, alice sends arp request, bob replies
> > > - this is a normal arp request-reply protocol. pcap should capture
> > >   bob's unicast
> > > - assert that the table is updated, pcap should see sentinel and then
> > >   bob's reply
> >
> > ...until here.
> >
> > > The terminology that I'm familiar with is client and host. Upon reading
> > > some rfc's and other documentation, the mapping seems to be:
> > > terminology: host (client), router (ap)
> >
> > Forget about WiFi for a moment. :) All hosts are just hosts. No client,
> > no server.
> >
> > > Sorry to be loading so much information here.
> > > To summarize, I've thought about the arp testing a little and wanted to
> > > write down my understanding. I going through starter tasks now to try
> > > to think of more features for mbuto and the net-next tree. I just got
> > > roopa's email of the tasks that are free -- thank you, i'll work on
> > > them next!
> >
> > Yes, I think you should rather start from that one.
> >
> > --
> > Stefano
> >
>
> It's interesting to look at the selftests.
> When we say "network topology," are we referring to setting up
> namespaces and policy routing between them? -- and these topologies are
> often reused in scenarios that have same setups?

yes, correct. policy routing or simply routing.
policy routing adds another layer of indirection to regular routing
(it can be used to override regular routing).
Not all tests use policy routing

>
> I am in the process of understanding the modularized setups in the
> pmtu.sh script. I'd like to try to extract out the common topologies in
> pmtu.sh so that they can be reused in multiple functions. For example,
> in test_pmtu_ipv4_dscp_icmp_exception and
> test_pmtu_ipv4_dscp_udp_exception, the setup of namespaces and policy
> routing, and setting initial MTU values look the same. So they can
> possibly be extracted and reused. I'm not sure if this is the right way
> of thinking about it. I'll need to research this a bit more.
>
you are thinking in  the right direction. But , for the project we
need to start thinking of beyond this single test.
There is overlap between topologies used across tests. every new test
copies an existing test and starts from it
and so there are groups of tests and their topologies that look
similar today :). There are a handful of topologies that can serve all
tests.


We can certainly brainstorm around this (stefano has some great ideas here)
