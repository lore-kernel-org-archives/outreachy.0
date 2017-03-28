X-GM-THRID: 6402509847805296640
X-Received: by 10.31.148.211 with SMTP id w202mr6796566vkd.0.1490700488264;
        Tue, 28 Mar 2017 04:28:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.122.147 with SMTP id a141ls79663itc.9.canary-gmail; Tue, 28
 Mar 2017 04:28:07 -0700 (PDT)
X-Received: by 10.107.201.131 with SMTP id z125mr9081332iof.94.1490700487160;
        Tue, 28 Mar 2017 04:28:07 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id y203si638833pfb.0.2017.03.28.04.28.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Mar 2017 04:28:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 79so20689432pgf.0
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Mar 2017 04:28:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=mJVugftOp7tp0hhz5fqhJJkHW3XFrxYEdpPicxhT4LM=;
        b=NTFsZYYDqeNuiA1ocKQuLcnj9kPw3QJ+Qc0JBALC+l5OPNadVAUhkvwRXngDfFq8Ie
         ymBAtFQAWp3N3cW0Ypi9uus11sMyev2CfwuJ3mhG1lOATGBM+BNWQkc3KZo3awLNYSFX
         UGbeBDI6oxwFQoHXivYZe9iVJX/+namiJ0mrZgOMnq6D+1gObTH7R2CVMrGy8L6Jlg78
         R4ATHRaGkmU6BAu8CmCnJxrIY9Z7EZ3bDsY2Qg3qHiqgYEAFA+x6wjQhLpRZyTgXMCuy
         5kZa6l4A3hIt2jZfk/Ac+cAtMYAtJJUs8aFRQTD54jAsdNfZqVZmxQL14H/CIr4O5bYv
         ZcZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=mJVugftOp7tp0hhz5fqhJJkHW3XFrxYEdpPicxhT4LM=;
        b=TgSXc9DWy6YgpV7wr491DdAmfKgndraszjXEuSnhYgfnV6OGT6cU4ozgSVs78zumEp
         Wx87hnZXtSJnTHEQttTnmB9JY+ePVwH1v4vW7s1kMf4HamVQzJTOAk2XVDsjomGvYShm
         YQxIwgX46+NaKsH5An/9AqLRnchCoxiL7m5eecPQ9bp5zE3EoCf2OiTtQO7FxlC4Cdw9
         QDENJWJSDgHpjGYFigXnMVzXYI27QM1VkhJ3X71h6/Xl23Yc2NmpgTGwSB5dQ5wQrh1r
         /51t07zHcqFcCdLhCd4lJCkSfFQpDWojGtmGTmu1VToK/nSESGYg/P7VF7j/WaeI1VFv
         Yelg==
X-Gm-Message-State: AFeK/H2xL2bqal8F39KNlJQ41rPJ73nHlggS+AodKnZSimKxKmDfPrXoPyU1iuhysC1qIg==
X-Received: by 10.84.229.73 with SMTP id d9mr36100416pln.177.1490700486923;
        Tue, 28 Mar 2017 04:28:06 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([47.9.128.168])
        by smtp.googlemail.com with ESMTPSA id z21sm6921543pgc.53.2017.03.28.04.28.04
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Mar 2017 04:28:06 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: netfilter-devel@vger.kernel.org
Cc: pablo@netfilter.org,
	outreachy-kernel@googlegroups.com,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH 0/3] ebtables: Constify option struct
Date: Tue, 28 Mar 2017 16:57:48 +0530
Message-Id: <cover.1490699407.git.gs051095@gmail.com>
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

Gargi Sharma (3):
  ebtables: extensions: Constify option struct
  ebtables: extensions: Constify option struct
  ebtables: extensions: Constify option struct

 extensions/ebt_802_3.c    | 2 +-
 extensions/ebt_among.c    | 2 +-
 extensions/ebt_arp.c      | 2 +-
 extensions/ebt_arpreply.c | 2 +-
 extensions/ebt_inat.c     | 4 ++--
 extensions/ebt_ip.c       | 2 +-
 extensions/ebt_limit.c    | 2 +-
 extensions/ebt_log.c      | 2 +-
 extensions/ebt_mark.c     | 2 +-
 extensions/ebt_mark_m.c   | 2 +-
 extensions/ebt_nat.c      | 4 ++--
 extensions/ebt_nflog.c    | 2 +-
 extensions/ebt_pkttype.c  | 2 +-
 extensions/ebt_redirect.c | 2 +-
 extensions/ebt_standard.c | 2 +-
 extensions/ebt_stp.c      | 2 +-
 extensions/ebt_ulog.c     | 2 +-
 extensions/ebt_vlan.c     | 2 +-
 18 files changed, 20 insertions(+), 20 deletions(-)

-- 
2.7.4


