X-GM-THRID: 6205781635135176704
X-Received: by 10.107.25.201 with SMTP id 192mr7215644ioz.21.1444897549354;
        Thu, 15 Oct 2015 01:25:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.32.74 with SMTP id g68ls716184qgg.49.gmail; Thu, 15 Oct
 2015 01:25:48 -0700 (PDT)
X-Received: by 10.13.204.132 with SMTP id o126mr6224611ywd.50.1444897548939;
        Thu, 15 Oct 2015 01:25:48 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id wl2si1315639pab.1.2015.10.15.01.25.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 01:25:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id ws5so17169063pab.3
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2015 01:25:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=vRMxU1DaNLwxEPJ6IPh+ZOWPx2u3KFOqYnH9YdK4LOc=;
        b=aigfFrEH9qIyB/LbJBKhUpw8B6QAw32ZtsuwjfwXk9FNNkAz12Sl+5+vWzynWBRQkR
         kAxaOd3p25MatfmmQHFpCe25dEEF1RqUKkgymLJh1UY5wE/ZE0WyZsuK+KWX7g6+9iIV
         UQjPZCkHmAcHr0n9jPc/ltQ4ctW5LsLkMjWr8Wvbgz6LUGJ6QJsLCQlukCu3lZTRm772
         ekDMigDilHySdkUAqoCcnuHvYaAS3vUYbAKNCmyDq2fV0duRQTuynaVGeqePyvgUknLf
         zkHFqvpQA1pAS5XN7IFOkNjSKK40CZfL/a5Ir02/nY1IyYBG9U6G4bc5ODryxF54Ku6D
         +2RQ==
X-Received: by 10.68.242.2 with SMTP id wm2mr8795507pbc.31.1444897548752;
        Thu, 15 Oct 2015 01:25:48 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.84.71])
        by smtp.gmail.com with ESMTPSA id rm9sm13946308pab.14.2015.10.15.01.25.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 15 Oct 2015 01:25:48 -0700 (PDT)
Date: Thu, 15 Oct 2015 13:55:45 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 17/18] staging: dgnc: dgnc_tty: Remove useless initialisation
Message-ID: <9d199d78c517050744adc0b29dbcff8768788ded.1444895819.git.amitoj1606@gmail.com>
References: <cover.1444895817.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444895817.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove intialisation of a variable that is immediately reassigned.

The semantic patch used to find this is:

// <smpl>
@@
type T;
identifier x;
constant C;
expression e;
@@

T x
- = C
 ;
x = e;
// </smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/dgnc/dgnc_tty.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/dgnc/dgnc_tty.c b/drivers/staging/dgnc/dgnc_tty.c
index a8d50a5..c764918 100644
--- a/drivers/staging/dgnc/dgnc_tty.c
+++ b/drivers/staging/dgnc/dgnc_tty.c
@@ -855,7 +855,7 @@ static void dgnc_set_custom_speed(struct channel_t *ch, uint newrate)
 
 void dgnc_check_queue_flow_control(struct channel_t *ch)
 {
-	int qleft = 0;
+	int qleft;
 
 	/* Store how much space we have left in the queue */
 	qleft = ch->ch_r_tail - ch->ch_r_head - 1;
-- 
1.9.1


