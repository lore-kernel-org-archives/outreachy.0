Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AD9AEA1
	for <outreachy@lists.linux.dev>; Tue, 19 Apr 2022 05:57:45 +0000 (UTC)
Received: by mail-qk1-f169.google.com with SMTP id s4so12797334qkh.0
        for <outreachy@lists.linux.dev>; Mon, 18 Apr 2022 22:57:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:subject:message-id:mime-version:content-disposition;
        bh=td2JNOMwQpyYXjUzJhpKGT5Igt5kRga8IIR8g/Mo7oQ=;
        b=JifJMYm1Prrd0UTr6QEHzcNK7Iv+a8jg2lSehT0y7odVvMVsbQoUanVng+eMHZnbOI
         KwjnhfM68zFhwQuILlHLetMiFQpAVEonP6Gl7oUox/JrodwSTx32G1iehMHIv2IlEyGU
         bKZh8ZIDMkRkiO00rss+Jeh6a9HJwWxAO/XlkqWVPjf27ZklcZRbP23C3ETiOpmAP/YR
         afmFX1EvLSMgJcIl7oKyiiy/tNkwBTLGjv5xONE8yCOaqpKEoNfABkwwFlffgyObaMNP
         LCZRFj1PXOzu/avyTZvLB5Jmt8ilDCkiTPFthYFjyMij6RDjoZjw1p7X9n4himNPVl4y
         TZ9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition;
        bh=td2JNOMwQpyYXjUzJhpKGT5Igt5kRga8IIR8g/Mo7oQ=;
        b=zekaz+/PvRFHfUMmlbrHyrutWBFRpZ03xLC6I4xIRfHsVLxScoWywyeh0z3qSFxt0t
         acFcnPcWvuCB4d723XVFP7F5piiPf4KrPKe0h1kQoT9XEhD1AGQJ5uhQTzkh0jwH1esU
         BU4VY3AlGJryqzJ+HehsGonpGCPzIqrislHL/A1eMalzUgL1Jy+CoZgPxz8DvSyFVtjF
         kToe/3Ej8JEsDvb94iY51SzoyqaEryOmfMkAjAMet/ETT+L1bQQvFx0R60NZvr6oAA8s
         Lh6gxokE8Vo80EyS6xjPOVvaV6vPgSXieMIAFWAE3zq6o1pc7U9hBe1hMVzxxRWJ0ux6
         /8Bw==
X-Gm-Message-State: AOAM533N8R2f+pgeyq6nCw/TMjKuY5xihnSbaJEqpzN5NbmwvS3a996s
	nu5WLl0E+BRyDxWeh2bDxG74hpOR8tf1OP7G
X-Google-Smtp-Source: ABdhPJxQ7ybPCfBtlsBhPPbAz0wwgyd75nCdFiFmCvOifwBcs++vTv3uH21NlbI/V91z7K7FpEPXgw==
X-Received: by 2002:a05:620a:198f:b0:69e:953c:1843 with SMTP id bm15-20020a05620a198f00b0069e953c1843mr5377475qkb.209.1650347863965;
        Mon, 18 Apr 2022 22:57:43 -0700 (PDT)
Received: from jaehee-ThinkPad-X1-Extreme ([2607:fb90:5340:b783:8249:2b03:efc4:2ba6])
        by smtp.gmail.com with ESMTPSA id 9-20020a05620a070900b0069e60da45aasm5493578qkc.60.2022.04.18.22.57.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Apr 2022 22:57:43 -0700 (PDT)
Date: Tue, 19 Apr 2022 01:57:40 -0400
From: Jaehee Park <jhpark1013@gmail.com>
To: outreachy@lists.linux.dev, Stefano Brivio <sbrivio@redhat.com>,
	Julia Denham <jdenham@redhat.com>,
	Roopa Prabhu <roopa.prabhu@gmail.com>
Subject: linux kernel networking project notes
Message-ID: <20220419055740.GC413931@jaehee-ThinkPad-X1-Extreme>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi, I'm trying to get comfortable with the tooling around the net-next 
tests and have been writing down some notes. Let me know if I'm 
misunderstanding things! 

Some notes:

mbuto
- builds linux images for VM environments
- add tests collections from net-next to run on the image

net-next
- tree that contains tests
- tests are in net-next/tools/testing/selftest/net

pasta
- socket transport without needing to create interfaces on the host.
- elevated CAP_NET_ADMIN privilege doesn't need to be granted becase 
  network interfaces are not created on the host.  
- instead, connect to qemu over UNIX domain socket to send and receive 
  data (no network interfaces and ip packets). 
- use namespaces (don't need NAT)
- no need for layer 2 translations 

linux network stack diagram
- https://docs.google.com/presentation/d/1I3b-M8FCmWZCF286ve8mVZ_8bwyl1fdHdSxTKQhwbyM/edit?usp=sharing
- with net-next tests, we're operating only in layer 4 (directsly 
  between layer 4 sockets) -- ipv4 block in the diagram above.

arp
- known networks are networks that have been through the arp 
  request-reply protocol. unknown networks are ones that just announces 
  its presence (gratuitous). 

-----

I thought a bit about testing for the new knob for arp.
The structure for tests would look like:
1. setup namespaces and a veth tunnel across them
2. run test
3. delete the namespaces

where the test would look something like:
- setup 2 host namespaces (bob and alice), and a router
- We could insert a sentinel after bob's response so that we know can 
  filter whatever comes next.  

case 1: alice captures pcap, bob broadcasts a gratuitous arp
- in the case of gratuitous arp, if a new knob that only allow learning 
  from known networks is inplace, pcap should not capture bob's 
  broadcasts
- assert that the table is not updated with entries, pcap should see no 
  sentinel

case 2: alice captures pcap, alice sends arp request, bob replies
- this is a normal arp request-reply protocol. pcap should capture 
  bob's unicast
- assert that the table is updated, pcap should see sentinel and then 
  bob's reply

The terminology that I'm familiar with is client and host. Upon reading 
some rfc's and other documentation, the mapping seems to be:
terminology: host (client), router (ap)

Sorry to be loading so much information here. 
To summarize, I've thought about the arp testing a little and wanted to 
write down my understanding. I going through starter tasks now to try 
to think of more features for mbuto and the net-next tree. I just got 
roopa's email of the tasks that are free -- thank you, i'll work on 
them next!

Thanks!
Jaehee
