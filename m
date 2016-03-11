X-GM-THRID: 6260886203874148352
X-Received: by 10.98.76.83 with SMTP id z80mr5598087pfa.4.1457726164367;
        Fri, 11 Mar 2016 11:56:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.108.99 with SMTP id i90ls2678466qgf.46.gmail; Fri, 11 Mar
 2016 11:56:03 -0800 (PST)
X-Received: by 10.129.157.71 with SMTP id u68mr8258560ywg.47.1457726163871;
        Fri, 11 Mar 2016 11:56:03 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id sf5si1608490pac.1.2016.03.11.11.56.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 11:56:03 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id q6so9260800pav.0
        for <outreachy-kernel@googlegroups.com>; Fri, 11 Mar 2016 11:56:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=tqbcTy3Po4gYPAU/a95G1OAhLGGVuh+15sJCwm27QDw=;
        b=OGY/icdq6Z9RRI/Unz296Zd8aQgyBu6x9D+Vz2lH1KyffHBhHqO2u9SlXkGgTiXzhF
         +5YKXNsRYn5oka5695+VTJg2r/2jjBlODpuucqKoMGjRTYOeD3IWi7lkcrbDSS7G+WJ/
         SnZvY7dPLHfNoXBpLWSFw4h2Jp9zPlhv5hA0BLYbMkisvTlBSicP1YJpq9sZfvTcxKgL
         TG2bhHOumftPGx9jyyYCSbv2HF7M8DSJLo5hGktMiGT+Kvfql+gsA+xIyCxCMiY1RbJB
         AklBDPkUfwHH1nyoqWDEh2HjejCp3axvdgePrz4Osf4c4ZYVVnD59kausrYxeKazwNZ7
         Gh5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=tqbcTy3Po4gYPAU/a95G1OAhLGGVuh+15sJCwm27QDw=;
        b=RkY51Srud68ibZh9Vfs3rwnmmv84GPHXbVb4s5LkyAwvjxd90zTCMiJ7Fg6XSmhEi2
         Qij7T3r/7p0bpnWt+iGJpOEzwkYQ51E9XgjWMSonurshbXWT9eBVHT8En0iw2xYz6VEw
         YvOnPQvJ+Vh8DKTLydCRjFbiuz1Axqm+cXsBuxJTZ7++twnayTiJ2aSzzaglvPdKipMN
         R+cwjD3qFEs28Xttni2KnEfroPzurfDBKpW91xKxbTNhUKG3b1zTi9l6/LSfz2dZVhwv
         LjCvLAttZVNMCbI/VafF4uL3Shb6k68uxxUnmF1LUXDfFihBi0lns/UAY9xbTtxJwtb7
         iSbw==
X-Gm-Message-State: AD7BkJJoeZmzpMrGhQRMSYpTMn70IkH/AQAqpew36UfzBatEDbCEuBj8dZIzYnK7nuKpOw==
X-Received: by 10.66.90.226 with SMTP id bz2mr18705283pab.31.1457726163434;
        Fri, 11 Mar 2016 11:56:03 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id to9sm14822059pab.27.2016.03.11.11.56.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 11 Mar 2016 11:56:02 -0800 (PST)
Date: Sat, 12 Mar 2016 01:25:45 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 00/13] Use list_for_each_entry_safe
Message-ID: <20160311195544.GA2878@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch-set replaces the while loop containing list_empty and list_entry
with list_for_each_entry_safe.

Doubly linked lists which are  iterated  using list_empty
and list_entry macros have been replaced with list_for_each_entry_safe
macro.

This makes the iteration simpler and more readable.

Bhaktipriya Shridhar (13):
  staging: lustre: obdclass: Use list_for_each_entry_safe
  staging: lustre: lnet: lib-move: Use list_for_each_entry_safe
  staging: lustre: lnet: conrpc: Use list_for_each_entry_safe
  staging: lustre: lnet: router:  Use list_for_each_entry_safe
  staging: lustre: lnet: config: Use list_for_each_entry_safe
  staging: lustre: lnet: peer: Use list_for_each_entry_safe
  staging: lustre: lnet: api-ni: Use list_for_each_entry_safe
  staging: lustre: osc: Use list_for_each_entry_safe
  staging: lustre: osc_cache: Use list_for_each_entry_safe
  staging: lustre: libcfs: Use list_for_each_entry_safe
  staging: lustre: lnet: socklnd_proto: Use list_for_each_entry_safe
  staging: lustre: lnet: socklnd: Use list_for_each_entry_safe
  staging: lustre: lnet: o2iblnd: Use list_for_each_entry_safe

 drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c    |  4 ++--
 drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c       |  9 ++++-----
 drivers/staging/lustre/lnet/klnds/socklnd/socklnd_proto.c |  4 ++--
 drivers/staging/lustre/lnet/libcfs/workitem.c             |  5 ++---
 drivers/staging/lustre/lnet/lnet/api-ni.c                 | 10 ++++------
 drivers/staging/lustre/lnet/lnet/config.c                 |  5 ++---
 drivers/staging/lustre/lnet/lnet/lib-move.c               |  9 ++++-----
 drivers/staging/lustre/lnet/lnet/peer.c                   |  4 ++--
 drivers/staging/lustre/lnet/lnet/router.c                 |  4 ++--
 drivers/staging/lustre/lnet/selftest/conrpc.c             |  5 ++---
 drivers/staging/lustre/lustre/obdclass/lustre_peer.c      |  5 ++---
 drivers/staging/lustre/lustre/osc/osc_cache.c             |  9 ++++-----
 drivers/staging/lustre/lustre/osc/osc_page.c              |  5 ++---
 13 files changed, 34 insertions(+), 44 deletions(-)

--
2.1.4


