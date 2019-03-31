X-GM-THRID: 6674617337151225856
X-Received: by 2002:a17:902:29ab:: with SMTP id h40mr1535100plb.133.1554055454599;
        Sun, 31 Mar 2019 11:04:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:b70c:: with SMTP id d12ls3105593pls.0.gmail; Sun, 31
 Mar 2019 11:04:13 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx8G3l8d7epa9xHbaQSem+fvQ1RPpkZKGCIqGSgixSxYmg6ayP3jmsbx7uWyHIPTgVDEpZn
X-Received: by 2002:a17:902:e38e:: with SMTP id ch14mr1651202plb.146.1554055453906;
        Sun, 31 Mar 2019 11:04:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554055453; cv=none;
        d=google.com; s=arc-20160816;
        b=r3M69kC1zwxL4vXBEO31J0bzgawjQx1UBpo+4YX5i6jCL4qiB+vGHQAJgaxh2CFiEW
         jWzJPpmyXr/NrDfKq/dxAUXaE2R8ax6aWNhgBFFSTOtdA7CM7gKJ7HcpbGRfkjAOvmXx
         9BwpVABr+dVOt+qbrKrAij4ZfhoDoIigUlxCfjNsqBP6PULnYVqZqbLYwTBYSKskTnTM
         kKcXmKW9cTKcXlSi0Y4OeLJxdNEq4s/UKvr3k7nd2LLzJ2HuVXl88jfhUcqNb2yWIYPY
         oK4iGQA3XoxN35dXfOtSu0LTBPdnXqj9fegMO5Xrecnn2QZS1rA0pvJsmYtXpviYHkPp
         fIog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=HdFRzPEPqvLuVqmHqBD03K4zfNrncD0Ck4MrbzIowLw=;
        b=BkMEY2xMFtIb46oRWn89gzovAqhqL9h7p+awiVE91KBkgRVEFMgyHNeJZWifFzGD/3
         x47M8/oyseV3Qa3/CiO8GVfAYzDPYNC532v2b/D4Z//ArNo4A3PAAjar9pou4phnivhd
         ipcAZ1olUs0aNSm87Ok9LDFOiNqkwwWMJadlqucB2NiYTII0W2HdxGhVwuJm+Eq/5Igr
         qNpJM/3Um7lDpVa3oMFv6+h3piliEnrRI+2Ipz7NBn82OPyXSeJxuh4xov2+w4a2rBh2
         KOye0nQX8TkUBuuSw+2VDGtUXYKJhGMVY4hsZEBz7g3EjoCcgQhrujg92nQftS7tAbpe
         iQJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eFCzXcx6;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com. [2607:f8b0:4864:20::52b])
        by gmr-mx.google.com with ESMTPS id h2si651819plk.2.2019.03.31.11.04.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 11:04:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::52b as permitted sender) client-ip=2607:f8b0:4864:20::52b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eFCzXcx6;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52b.google.com with SMTP id q1so3551234pgv.13
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 11:04:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=HdFRzPEPqvLuVqmHqBD03K4zfNrncD0Ck4MrbzIowLw=;
        b=eFCzXcx6NJ7FIdqGhURxWbtqGFeXtQgzo2yCs6RwWndPCXlDx7AgM7saDd5fFH0H0O
         SBY0hzpiD+BDkm43uJE6AV8FKJ6EfwM3wmwDtP2YdKkiD+0SKWQf2ZhqbajYny1eSbro
         yXqWSXpY3XbrXV6l4wykFKZUl9smeoUdmVB6kgOHUzKv3/WWSMUdekMcBBANzyu5RZtk
         3Li0VGXUb7ku1KWU6D6eVzp09C1DBdRWn89jkCd8HaRDX+liivQ+ydLaxbVnfsWsaKrU
         1K4iJ5/2TYBdE7t6beqBNClcnSNnF+AneEZZzuO68LbPDrKeBQxyD4gNDjSxJ0BT4w+0
         0vBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=HdFRzPEPqvLuVqmHqBD03K4zfNrncD0Ck4MrbzIowLw=;
        b=XiY2a5C2y57oKdXv+Q6RgBZ05cf309CrAgwiVaOHXyfthDmSttuSuCVRBuyTnWOqXG
         sCAyxSSkDzWrqf0pjx3aKSts/4vpoezLpI/eNlIT8/atj1E/4WdkChYZy86JiAfyIm2T
         gIEx+v0qqieAp8kGa0h2zIUJ2wqJoK4cmIe4tOP5xbiyZ7ri5RfGwd879TPBa+fsXKE1
         DRyu4dvSoizzNqmngMRw5FTbbaa6Zkty6X6S9k+eMOD0NPEKbcKq0unocczrvwRAeUUA
         C2SCC9yfBkdNp6PfZAANrftJqiV5+wJzRhEvKmL8HHZvwMwlDTKEYMFnmi85qx1cRGdi
         RPtw==
X-Gm-Message-State: APjAAAXQZWTA+x34sEd9jNjFCxGsu1sbsUCwif4HKRVM4VVJpg/BLC+Z
	+fLCVBMrJtzfRyRMHLzuBoewVKwe
X-Received: by 2002:a62:bd0d:: with SMTP id a13mr26311038pff.242.1554055453417;
        Sun, 31 Mar 2019 11:04:13 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.230.116])
        by smtp.gmail.com with ESMTPSA id e1sm8289669pfn.187.2019.03.31.11.04.11
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 31 Mar 2019 11:04:12 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH 1/5] staging: comedi: use !x in place of NULL comparison
Date: Sun, 31 Mar 2019 23:33:47 +0530
Message-Id: <ad3e12740929d09f6459ab6866630e6cd10b80a5.1554054896.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1554054896.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554054896.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1554054896.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554054896.git.payal.s.kshirsagar.98@gmail.com>

Challenge suggested by coccinelle.
Avoid NULL comparison, compare using boolean operator.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/comedi/drivers/tests/ni_routes_test.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/drivers/tests/ni_routes_test.c b/drivers/staging/comedi/drivers/tests/ni_routes_test.c
index c6dc18f..f809051 100644
--- a/drivers/staging/comedi/drivers/tests/ni_routes_test.c
+++ b/drivers/staging/comedi/drivers/tests/ni_routes_test.c
@@ -282,7 +282,7 @@ void test_ni_sort_device_routes(void)
 
 void test_ni_find_route_set(void)
 {
-	unittest(ni_find_route_set(bad_dest, &DR) == NULL,
+	unittest(!ni_find_route_set(bad_dest, &DR),
 		 "check for nonexistent route_set\n");
 	unittest(ni_find_route_set(dest0, &DR) == &DR.routes[0],
 		 "find first route_set\n");
-- 
2.7.4


