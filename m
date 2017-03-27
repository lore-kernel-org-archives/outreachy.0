X-GM-THRID: 6402251586842656768
X-Received: by 10.31.163.79 with SMTP id m76mr5797566vke.17.1490640357406;
        Mon, 27 Mar 2017 11:45:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.48.22 with SMTP id d22ls762803otc.43.gmail; Mon, 27 Mar
 2017 11:45:57 -0700 (PDT)
X-Received: by 10.157.45.98 with SMTP id v89mr8641028ota.105.1490640356999;
        Mon, 27 Mar 2017 11:45:56 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id y203si246833pfb.0.2017.03.27.11.45.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Mar 2017 11:45:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 79so15062564pgf.0
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Mar 2017 11:45:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=LLz8tnXPURxx1rH+T71IwZOO1s20hyuNFYVGzyotWKE=;
        b=K8PWNGuiq9ZwZtYMI6UVeYvjCNuJzonMLdfnrJ72zHBwtwTvdzbVcu2gP9SokXqX18
         rrJobjvE3lnoNYaVILtzlX00L4pn7pi1KRPjB9rfwtrwoAo883gf+l9a6/g3cmZL2hSk
         EnbqEOnTG/pq4NMFvEySS22ylyWOuaCgvh+twXcUGsh51RExLJJMXwtZeqLAgSD56wJE
         pwkszCvR8S/JFMC6ad0N1G7fyls7LjhhdpqFbqr1pabc6IlCW8Tkf1qUU8rZ+qQwMUJ0
         y9tWO7zdZ1lKlJ4dO7+r0JvKs/s4pBQbqZPywncsc3+JJZIyR4AKA3yEK35IP+X/b9hS
         ZT+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=LLz8tnXPURxx1rH+T71IwZOO1s20hyuNFYVGzyotWKE=;
        b=QIHu9SNWpZuJ6s6dYZBCIAkrGZfNUR9pfs/pq0bEFk4dzbfXfXULehVeXvPli0xhBa
         8n4ouM8Os2efRWRJ0WQobHlcTKvz0vKIVQIAy8GyUeHZtW3UdLzwbTWpEJ1siQylQn3+
         JgzMnv0yjvrgmVGGIrdUy/HnlmzDEouXVmVMnjVSP9Vtu3ihYhoc/Y3DxJIrVqAr0jcL
         Kqjz2JPB3lchKb5EAgwwoHo7KKCyFRaqae9FBwQjEgF2QzcBVzMRy9zSDayKu670Xgko
         Vnz6aoKiBggFjyY5cXnmy1HQpHETEGXodhtyiRbf/4u9+MFKtp/VzPheKcsFXlBz3D80
         rGyg==
X-Gm-Message-State: AFeK/H2o6Auw/RY07Nv19gb6Xkm/ZvYxFk5HcddY6mtg08WtTwsEVeqY8+r2Tw1ke7PHpw==
X-Received: by 10.98.16.137 with SMTP id 9mr26868446pfq.104.1490640356773;
        Mon, 27 Mar 2017 11:45:56 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([47.9.128.122])
        by smtp.googlemail.com with ESMTPSA id c195sm2598698pfb.60.2017.03.27.11.45.50
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Mar 2017 11:45:56 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: netfilter-devel@vger.kernel.org
Cc: pablo@netfilter.orgm,
	outreachy-kernel@googlegroups.com,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH 0/4] Constify option structures
Date: Tue, 28 Mar 2017 00:15:26 +0530
Message-Id: <cover.1490640256.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

The struct option is generally used only to initialise
fields inside certain structs and is not modified anywhere.
Done using Coccinelle:

@r1 disable optional_qualifier@
identifier s,i;
position p;
@@

static struct option i@p[] ={...};

@ok1@
identifier r1.i;
expression e;
position p;
@@
e = i@p

@bad@
position p != {r1.p,ok1.p};
identifier r1.i;
@@
e@i@p

@depends on !bad disable optional_qualifier@
identifier r1.i;
@@
static
+const
struct option i[] = { ... };


Gargi Sharma (4):
  extensions: libebt_limit: Constify option struct
  extenstions: libebt_mark_m: Constify option struct
  extensions: libebt_mark: Constify option struct
  extensions: libebt_nflog: Constify option struct

 extensions/libebt_limit.c  | 2 +-
 extensions/libebt_mark.c   | 2 +-
 extensions/libebt_mark_m.c | 2 +-
 extensions/libebt_nflog.c  | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

-- 
2.7.4


