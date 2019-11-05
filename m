X-GM-THRID: 6755960127598100480
X-Received: by 2002:a92:d64d:: with SMTP id x13mr19160710ilp.54.1572994561112;
        Tue, 05 Nov 2019 14:56:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:ad01:: with SMTP id w1ls70275ilh.9.gmail; Tue, 05 Nov
 2019 14:56:00 -0800 (PST)
X-Google-Smtp-Source: APXvYqwjT1DmEesdr4Zrdf74Fuj1/0KlaoimVKbW9IgmWef7Ghcu6MyjkjdTVjZPykzb3/6ez4gZ
X-Received: by 2002:a92:9891:: with SMTP id a17mr37695349ill.292.1572994560413;
        Tue, 05 Nov 2019 14:56:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572994560; cv=none;
        d=google.com; s=arc-20160816;
        b=ENoYclRmHueoWRUGbkarSTjU7+FvRPDq8GffnASwjZvevJ7bH4eAZ5VetlV5eT270Q
         imucx3wKvstD+Y67H3GIwqK39tPDXc2PYwr3LykdjPhk0Iq3QUry/cDKZB00vipBkXiI
         HpBXIm6jbASl19jUjbj5pJfH47cfAETJ9W7WcadA9LDr1VGVc5BtXbGoPPynLNacHwzo
         BCD14Z69sfUJIS5ZY067zIl3dDD+B+6vdqTxnwuwtYa0+2zKPNZVYTSz5Xc9N3h3EzHR
         HzGwpRYxhBFmEv5lwV6lNQ2v7nclmyf/9kRlKlz5paU7GC9TVh04dNHDoftGdtcEfiDd
         G1jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=sgBB0szgQj+EvKLAFteKUGEBp9ACi+wxbY2AzeGJbJc=;
        b=gK6U2YSf/01SfTn3RoVEEUyTz0x2TjJePaLvXdbufZ9vMT/T+R4cfrg/Y5D9YH7JUj
         AWFRnJFkUKHHhYDS3P5dBFwGuyJ9SQTuxED6IyUNLqRjNd/J2f+Y67CtgsNlXt18FDx/
         4J7tsRZkY6XCmYIlZX+prt3t6ikbvFfT8T4JAttUNJEkYOcGPxsT9cc+yDBhwYhZqnHa
         P//9cfCAuHgw4iTQNGkTS58TBvF7YmUOBrYlaNyN0F8Kb0M/QomeGuVstPZd6ZjvrGdD
         +KiC9YlEkDbl2NynqqemScZ+Xf2/WKKlgdecIw0KdX3eyb7ROUPI4/5BPrGQUgaOES36
         BXww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=plLZ4biH;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id 75si1363895ilw.3.2019.11.05.14.56.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 14:56:00 -0800 (PST)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=plLZ4biH;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id l4so5178403plt.13
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Nov 2019 14:56:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=sgBB0szgQj+EvKLAFteKUGEBp9ACi+wxbY2AzeGJbJc=;
        b=plLZ4biHMww0bVkSR/k7HvKSA7WUidyA2eqnXLH27sfsh6c0dGMJFkX2aVjS1pPMux
         xFtkzWXaTN09MWPG/8uCQOc+TMtsCsN/3YND7CsreavNU0saAhlOpaIJlz6ODNjVzlt1
         W5PqX9jiyluDSk+mZIzMB0taSHPC8Gn2i4D5+ywTNLYhOVLDdAtEBePvgH831/0ZCH0S
         1y/5waAniBvXxR0i8TAhliSE9pU/x/E1atgfGyibcdo51r7KIXyM4xMt5V8FZ/VSdBhy
         pLRENW9f90NK1vO9A8dhb/tG3c7f9C6kpxjTnh97bNXKHbwNNdh0DillmB/m6btUMM3K
         Unug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=sgBB0szgQj+EvKLAFteKUGEBp9ACi+wxbY2AzeGJbJc=;
        b=iPLAKt3+MN0Ro8y4P/X8BUOdKbcBsVVYVD/WcBjTAvJXDT0KayszAZfs+vsi//Cbwk
         yqD1c0SxX8u2oFb/dfpfjbJRI3g/+7bOq9PYY7uFrgSQHwPzUjAcOQ9SiVgDGTjcPmLC
         YUlDaEpJajLDsxpxvqaY8tLq5kABUkVbjGL4PZ5oNtjCM4lsdl0w/m9etJ54OsOyYjPy
         oeRrFc8Fo2UasTa6eHUrpNFj4Nl2QXtvCVHmfw7yPmqr6vUFsgqKRm1pepcp57uSac5U
         DVvNuBiw93mqZPgNyGiJaKgf2vDfjaIbrzGLpu79+yhD5n2dE+8UnL0Egk/lJ6RwV+3M
         Y6Kg==
X-Gm-Message-State: APjAAAUPwAgVT7Pbk3KHNe1K7GLfhTFnIKl8Q04oOORf591TE9jBTXMe
	uXAROjcVGwYFtZx64ibGvVChAAtbFEEQeg==
X-Received: by 2002:a17:902:8bc2:: with SMTP id r2mr36290594plo.36.1572994559785;
        Tue, 05 Nov 2019 14:55:59 -0800 (PST)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id x9sm481662pje.27.2019.11.05.14.55.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Nov 2019 14:55:59 -0800 (PST)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v2 11/14] staging: vc04_services: Rename VCHIQ_REMOTE_USE_CALLBACK_T to vchiq_remote_callback
Date: Tue,  5 Nov 2019 14:55:28 -0800
Message-Id: <dacc944e3981290d3e5b81aa600f4c19be8e6f10.1572994235.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572994235.git.jamal.k.shareef@gmail.com>
References: <cover.1572994235.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572994235.git.jamal.k.shareef@gmail.com>
References: <cover.1572994235.git.jamal.k.shareef@gmail.com>

Renames VCHIQ_REMOTE_USE_CALLBACK_T to vchiq_remote_callback to match kernel code style.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
index a6f17b91ff78..d9b23af25671 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
@@ -93,7 +93,7 @@ struct vchiq_config {
 };
 
 typedef struct vchiq_instance_struct *VCHIQ_INSTANCE_T;
-typedef void (*VCHIQ_REMOTE_USE_CALLBACK_T)(void *cb_arg);
+typedef void (*vchiq_remote_callback)(void *cb_arg);
 
 extern enum vchiq_status vchiq_initialise(VCHIQ_INSTANCE_T *pinstance);
 extern enum vchiq_status vchiq_shutdown(VCHIQ_INSTANCE_T instance);
@@ -136,7 +136,7 @@ extern enum vchiq_status vchiq_set_service_option(VCHIQ_SERVICE_HANDLE_T service
 	enum vchiq_service_option option, int value);
 
 extern enum vchiq_status vchiq_remote_use(VCHIQ_INSTANCE_T instance,
-	VCHIQ_REMOTE_USE_CALLBACK_T callback, void *cb_arg);
+	vchiq_remote_callback callback, void *cb_arg);
 extern enum vchiq_status vchiq_remote_release(VCHIQ_INSTANCE_T instance);
 
 extern enum vchiq_status vchiq_dump_phys_mem(VCHIQ_SERVICE_HANDLE_T service,
-- 
2.17.1


