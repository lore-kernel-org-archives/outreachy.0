X-GM-THRID: 6465611589668044800
X-Received: by 10.159.35.79 with SMTP id 73mr13361379uae.94.1505416406612;
        Thu, 14 Sep 2017 12:13:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.138.1 with SMTP id v1ls5576283itd.3.canary-gmail; Thu, 14
 Sep 2017 12:13:26 -0700 (PDT)
X-Received: by 10.101.66.67 with SMTP id d3mr10936794pgq.144.1505416405997;
        Thu, 14 Sep 2017 12:13:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505416405; cv=none;
        d=google.com; s=arc-20160816;
        b=l/CSdzoqQqgNV4khUp3RUKWSHeO4estxn3yFHgIQ+TSqQRsOsaGEbvx7OIPeKzdooD
         FGZrp059oS39ZRMhNPyt6QqHQ2vyqKpEhbyOQzanJHQGv7rJ8JGOyMEpw5gLdFT8QOK1
         pBOU/gtsyMDivb3TATcaL9R1LIGsMVt63pD8uZ8movy2LFkJE4LEpCmAfEDGk8sCpvJC
         63z1U1N0tMKQlwuHiOVfDdS+YuUcBS5MTzxB8MnszzG7DxKhjrAJF1R0zB/QZ3e9Iwlw
         iY8hsNOe2PzmK2LVzUkyTZ1RarTwjRu5X6qVyTzURlEyBKuJ5cFcnIo+ohk//fiuDUAL
         WlVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=RLN+z/N+uRTEAN5/aBP247qwKKLQHsKgYSY3Q94GD9A=;
        b=YIJ+411xAvd1i2EZsZY79+JfHpH0kP6iFf7+6PNh2VVlN2OjJZuX62TI+wFANUPLTw
         DAEn12jrGfq6AyGrzI6vtKqkuEf95L9HkLVMCoT5rvz5ha7UVhTorrU2g99Z3s5pq1zR
         ineKrmTeXLX7rWjjbdQ7zu0kujoZg0rZ4oilnnljAkqdcz4uL3CPA2l+Rc+/ND/p9mL1
         2psr8UaOTaEJOI6ybrAa6cppsVzyPx38xu6x2ph+oCZNKSSUSf6XQ8IeTs+eQMG1tstl
         tHWArdJaXFFkg01JLnEcwpO6oZVEoDaPle90EQQ18nnbtMsqthUVCyiOIczz22SPVSJQ
         Q0VA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=q2w7lRuo;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id d207si1330497pfd.16.2017.09.14.12.13.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 12:13:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=q2w7lRuo;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id j16so135961pga.2
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 12:13:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=RLN+z/N+uRTEAN5/aBP247qwKKLQHsKgYSY3Q94GD9A=;
        b=q2w7lRuofuLgZ6x2+0AdIWa+B2PWI5+YjnmEA2fhVnTGknshDUiUy25kcOYubCj6fW
         VTi55n6T7fv1zvLqmfXbzhdcrp7JBdmhkuHzPArCD8kXMHzpG5uGWxV1PQDnI6q8RK78
         uO9aqzhgwWtFsFzWmO7R4e2VtvfHgMWqtAERHR3tx0TqRt5IMboJNuLMd379m7NQvRyE
         zwgEgC7Wle1xf3/7LLDo8VAISglstvrPqOw9A6lMqjgAEnqE6TnLymZChxfvyogkg5Ct
         5XHeHpi12RLqnJpXHxVYDElxs+48qcAfNFW0E0UZi1fymxoeOQFTvMOmGWiqNErjCaby
         Ooig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=RLN+z/N+uRTEAN5/aBP247qwKKLQHsKgYSY3Q94GD9A=;
        b=dt35mi4cI2xh0tb8nSkXnec/GPcSIbSCY4W8blN4WRYjA44HrHffQzQh8J/iHZgSqY
         sewdaaMdijjxqY4A+4NGdQscExSwTK8XLEHFK2Pv8Iivt6WGmlCWiZl8m2lR/Sx8jocz
         06itTHUbOsoXCzjefxsg+fo39VRilJmCbaHxFHUxF6VwQhwi3O7MS9t/u1+hf9FnkdiT
         ZrB1D9WwVpwCtZoDW4uwmYWG8UuWNM6YGFUaaYhi7uyIk4KSplgXAEzrd+i3X6ymuMII
         y7/OtWiqUO1LPtjPtuT6l8wf2inHXIjwFpa5zEIJak3hhmueUPnS25gttfu4SbXRR+XZ
         nniQ==
X-Gm-Message-State: AHPjjUgAhNPPcJ5ZtjJ2rlLTwSGdha55eT43uoQjIpLPccQ/Y1nsRr5s
	geqWpTxUn5tV+Q==
X-Google-Smtp-Source: AOwi7QBBFXuFoKYs7LDUE5BWOWjJaiCzNeCRjK3xI6zO8M2JF+RDrPEmmYaFWMZJm/eN5ZFZGyyMsw==
X-Received: by 10.98.242.16 with SMTP id m16mr4372695pfh.72.1505416405734;
        Thu, 14 Sep 2017 12:13:25 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([171.78.243.118])
        by smtp.gmail.com with ESMTPSA id k73sm32363287pfg.81.2017.09.14.12.13.24
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 14 Sep 2017 12:13:25 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 3/3] staging: lustre: enclose multi line macro in do-while block
Date: Fri, 15 Sep 2017 00:41:53 +0530
Message-Id: <4ec075c24925f1afa94fe6235df554172ac1569c.1505414917.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505414917.git.aastha.gupta4104@gmail.com>
References: <cover.1505414917.git.aastha.gupta4104@gmail.com>
In-Reply-To: <cover.1505414917.git.aastha.gupta4104@gmail.com>
References: <cover.1505414917.git.aastha.gupta4104@gmail.com>

This patch fixes the checkpatch.pl warning:

macros with multiple lines should be enclosed in do-while block.

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/include/lu_object.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/include/lu_object.h b/drivers/staging/lustre/lustre/include/lu_object.h
index abbb4d6..c8d5e0b 100644
--- a/drivers/staging/lustre/lustre/include/lu_object.h
+++ b/drivers/staging/lustre/lustre/include/lu_object.h
@@ -1223,10 +1223,12 @@ void lu_context_key_revive(struct lu_context_key *key);
 	struct __##mod##_dummy_type_stop {; }
 
 #define LU_TYPE_INIT_FINI(mod, ...)	     \
+do {						\
 	LU_TYPE_INIT(mod, __VA_ARGS__);	 \
 	LU_TYPE_FINI(mod, __VA_ARGS__);	 \
 	LU_TYPE_START(mod, __VA_ARGS__);	\
-	LU_TYPE_STOP(mod, __VA_ARGS__)
+	LU_TYPE_STOP(mod, __VA_ARGS__);		\
+} while (0)
 
 int lu_context_init(struct lu_context *ctx, __u32 tags);
 void lu_context_fini(struct lu_context *ctx);
-- 
2.7.4


