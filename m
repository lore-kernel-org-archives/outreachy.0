X-GM-THRID: 6337390843356250112
X-Received: by 10.129.23.212 with SMTP id 203mr141067ywx.123.1475538789888;
        Mon, 03 Oct 2016 16:53:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.42.101 with SMTP id t92ls597514ota.29.gmail; Mon, 03 Oct
 2016 16:53:09 -0700 (PDT)
X-Received: by 10.129.83.6 with SMTP id h6mr169608ywb.89.1475538789525;
        Mon, 03 Oct 2016 16:53:09 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id um12si157072pab.2.2016.10.03.16.53.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Oct 2016 16:53:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id t6so5506329pae.2
        for <outreachy-kernel@googlegroups.com>; Mon, 03 Oct 2016 16:53:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=qlQkXyzFxTAEpVJghXIUKQiqeCYWbfIV3IoEtZqhaLE=;
        b=KtPpSQ0Hf1okXNMvefuk/Sb3IvWkm5XNXf6sU2m2r2EYYgcdvwW/813bQv8XuOoYM3
         ttMsIOivJw8/MQ3/hVGBzrmASzbAFs68gGCRjDjozYoP04jwyy49aFOpE3S+i0buYctg
         m4raeT92zEbzR0UQYoGsoXznNFnj46N/oqlY2j29lZsCP2BF8a0Gv685haVRwWwaRki2
         Rcai1xtgFQsR4RafhSepY/rQB5Du9Bt9bGSATg8XgZgRnQ4b3MwTrwbDNMVR32ebzJPS
         vOEKtdfuBKq06Q9e+roRlUfdikF1/GGnIYI4cyh3zwO6CXw/ossFxFfkPNGuNJ3UG8WR
         yF3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=qlQkXyzFxTAEpVJghXIUKQiqeCYWbfIV3IoEtZqhaLE=;
        b=D+lanqkkrxvY8hX1AFSZNXWPxxA+KNi6osLD0vMzikFY2VmI7nDjsebPQIkBIGjggQ
         GPcDh9ZWZJmU6oM6I3kGamv6KU7dgazCqdg0spQAfP/OHjH4aXtWdDBDpfvcBdCINQ2t
         JmAiMFS/hKP8tGoNXU4LIpYIKwP8s+GX9BIVIs8rJ28ntQvH9/1BWWbvU51+cW8/UC2A
         ur0V59ODEmjir7Ydh1F0tn9MeUwpjO7hJAtkMzgknPatVFa9RaTA75qTl0/f7yp0GIxW
         mqWxEwTZ6duKr5aPTaHNQ3sncD1BgGgBfmwRL9PxhVfYfgU5ahf6/Z5Sdy4KP2hfZ9+8
         uLBg==
X-Gm-Message-State: AA6/9RmGo9sfn/3EBjvpD5RK9F0blch2RpC5odvzhFCC30nekZU4oFQ39icFHbs4iOUKLw==
X-Received: by 10.66.192.1 with SMTP id hc1mr992216pac.146.1475538789334;
        Mon, 03 Oct 2016 16:53:09 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id d2sm49717834pfe.94.2016.10.03.16.53.08
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Oct 2016 16:53:09 -0700 (PDT)
Date: Mon, 3 Oct 2016 16:53:06 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: amsfield22@gmail.com, daniel.baluta@intel.com, oleg.drokin@intel.com,
	andreas.dilger@intel.com, jsimmons@infradead.org,
	gregkh@linuxfoundation.org
Subject: [PATCH] staging: lustre: use 'unsigned int' not unsigned
Message-ID: <20161003235304.GA2113@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Use unsigned int rather than unsigned in header variable declaration
for readability. Error found by checkpatch.

Signed-off-by: Elizabeth Ferdman <gnudevliz@gmail.com>
---
 drivers/staging/lustre/lustre/lov/lov_cl_internal.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/lov/lov_cl_internal.h b/drivers/staging/lustre/lustre/lov/lov_cl_internal.h
index 4d2b7d3..572c8f4 100644
--- a/drivers/staging/lustre/lustre/lov/lov_cl_internal.h
+++ b/drivers/staging/lustre/lustre/lov/lov_cl_internal.h
@@ -217,7 +217,7 @@ struct lov_object {
 
 	union lov_layout_state {
 		struct lov_layout_raid0 {
-			unsigned	       lo_nr;
+			unsigned int	       lo_nr;
 			/**
 			 * When this is true, lov_object::lo_attr contains
 			 * valid up to date attributes for a top-level
-- 
2.1.4


