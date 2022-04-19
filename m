Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AEB47A
	for <outreachy@lists.linux.dev>; Tue, 19 Apr 2022 14:24:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1650378254;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=G/+9kSdU40n3nqv0ltt/PlQrbCAXBmq+44UETBOUZgM=;
	b=Y5QunxjeNJMdY31WqOIsXLWVSagGnPnV+yGkeKEKM6K+ZUBIi3ES4BPOItnFWB0CGkETXE
	ejcNnRARMUdZRKhl5PZJYboJ4SZ6N8XllmMUbC7BndJuFFQBxaz8r97RjzONVdwOvGoJCG
	TyWxfTBa2zgbN/T28WI9EmXpAjgZGOI=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-142-Oj3Kza81Pa2pYuuJAc29mQ-1; Tue, 19 Apr 2022 10:24:11 -0400
X-MC-Unique: Oj3Kza81Pa2pYuuJAc29mQ-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 58C792A59573;
	Tue, 19 Apr 2022 14:24:00 +0000 (UTC)
Received: from maya.cloud.tilaa.com (unknown [10.40.208.6])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D5B7440146E;
	Tue, 19 Apr 2022 14:23:59 +0000 (UTC)
Date: Tue, 19 Apr 2022 16:23:51 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Jaehee Park <jhpark1013@gmail.com>
Cc: outreachy@lists.linux.dev, Julia Denham <jdenham@redhat.com>, Roopa
 Prabhu <roopa.prabhu@gmail.com>
Subject: Re: linux kernel networking project notes
Message-ID: <20220419162351.4fcb547d@elisabeth>
In-Reply-To: <20220419055740.GC413931@jaehee-ThinkPad-X1-Extreme>
References: <20220419055740.GC413931@jaehee-ThinkPad-X1-Extreme>
Organization: Red Hat
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=sbrivio@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Jaehee,

On Tue, 19 Apr 2022 01:57:40 -0400
Jaehee Park <jhpark1013@gmail.com> wrote:

> Hi, I'm trying to get comfortable with the tooling around the net-next 
> tests and have been writing down some notes. Let me know if I'm 
> misunderstanding things! 
> 
> Some notes:
> 
> mbuto
> - builds linux images for VM environments
> - add tests collections from net-next to run on the image

...or any kernel tree, really. Work in progress (mostly by Sevinj at
this point), you could try it out to test your own changes, if
something doesn't work please bother me and Sevinj.

> net-next
> - tree that contains tests

...most kernel trees (https://git.kernel.org/) include the same tests,
actually -- net-next is simply where new networking features (and
usually tests) are introduced first.

> - tests are in net-next/tools/testing/selftest/net
> 
> pasta

This is rather out of scope for the current projects.

That is, I'm happy if you find it useful or want to contribute to it,
but that doesn't count toward Outreachy contributions, because it has
little to do with the kernel. I actually wonder how you even found
about it :)

> - socket transport without needing to create interfaces on the host.
> - elevated CAP_NET_ADMIN privilege doesn't need to be granted becase 
>   network interfaces are not created on the host.  
> - instead, connect to qemu over UNIX domain socket to send and receive 
>   data (no network interfaces and ip packets).

...by the way, that would be "passt", "pasta" uses a tap interface to a
network namespace (not a VM).

> - use namespaces (don't need NAT)
> - no need for layer 2 translations 
> 
> linux network stack diagram
> - https://docs.google.com/presentation/d/1I3b-M8FCmWZCF286ve8mVZ_8bwyl1fdHdSxTKQhwbyM/edit?usp=sharing
> - with net-next tests, we're operating only in layer 4 (directsly 
>   between layer 4 sockets) -- ipv4 block in the diagram above.

That's rather specific for ath10k (a wireless adapter driver).
Unfortunately I don't have a better suggestion right now.

IPv4 is a Layer-3 protocol (https://en.wikipedia.org/wiki/OSI_model).
The tests are not necessarily operating at Layer 4 (TCP, UDP, etc.),
but also at Layer 3 (IP, IPv6).

> arp
> - known networks are networks that have been through the arp 
>   request-reply protocol. unknown networks are ones that just announces 
>   its presence (gratuitous). 

Hosts, rather than networks. Gratuitous ARP requests, see:
	https://en.wikipedia.org/wiki/Address_Resolution_Protocol#ARP_announcements

if you're referring to the task idea from the project description: the
network is intended to be "known" (a bit ambiguous, actually) if we
already asked hosts for their addresses and if that's the reason why we
have entries in the ARP table.

If hosts are just announcing themselves, and had no corresponding
entries in the ARP table, then they weren't previously "known".

> -----
> 
> I thought a bit about testing for the new knob for arp.
> The structure for tests would look like:
> 1. setup namespaces and a veth tunnel across them
> 2. run test
> 3. delete the namespaces
> 
> where the test would look something like:
> - setup 2 host namespaces (bob and alice), and a router

You don't actually need a router because you're not interested in
creating two separate networks.

> - We could insert a sentinel after bob's response so that we know can 
>   filter whatever comes next.  

Hmm, sorry, I couldn't make sense of this part, but the rest seems to
make sense:

> case 1: alice captures pcap, bob broadcasts a gratuitous arp
> - in the case of gratuitous arp, if a new knob that only allow learning 
>   from known networks is inplace, pcap should not capture bob's 
>   broadcasts
> - assert that the table is not updated with entries, pcap should see no 
>   sentinel
> 
> case 2: alice captures pcap, alice sends arp request, bob replies
> - this is a normal arp request-reply protocol. pcap should capture 
>   bob's unicast
> - assert that the table is updated, pcap should see sentinel and then 
>   bob's reply

...until here.

> The terminology that I'm familiar with is client and host. Upon reading 
> some rfc's and other documentation, the mapping seems to be:
> terminology: host (client), router (ap)

Forget about WiFi for a moment. :) All hosts are just hosts. No client,
no server.

> Sorry to be loading so much information here. 
> To summarize, I've thought about the arp testing a little and wanted to 
> write down my understanding. I going through starter tasks now to try 
> to think of more features for mbuto and the net-next tree. I just got 
> roopa's email of the tasks that are free -- thank you, i'll work on 
> them next!

Yes, I think you should rather start from that one.

-- 
Stefano

