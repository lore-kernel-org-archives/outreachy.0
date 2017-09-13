X-GM-THRID: 6464947819093426176
X-Received: by 10.84.194.3 with SMTP id g3mr10809280pld.48.1505284811505;
        Tue, 12 Sep 2017 23:40:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.11.223 with SMTP id 92ls2254472iol.7.gmail; Tue, 12 Sep
 2017 23:40:10 -0700 (PDT)
X-Received: by 10.107.10.39 with SMTP id u39mr2957760ioi.73.1505284810673;
        Tue, 12 Sep 2017 23:40:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505284810; cv=none;
        d=google.com; s=arc-20160816;
        b=NZyPzp6tiPVOFKeqYoHQVENBEXeMDVPMnDyMRpWrDHo+bqsO5GCs+x3aOEOebl62mG
         J3O/dOoHVH7QG3AwIO55si3u0OHKxOCfoHuEjIahQu7qh1f7xf79sxpjYigUlsepehNK
         Eb5HXeXbAIBoNvNwacj0mJag9erlkvF9JIKwEwxN9QEeAuQML+3ZHDfY4fZMQRPFfM+t
         Eo8nhRvDsLUtsnrqPDPJhdjpqREZZ+Wgtn5Zyi/wj0J2GD9OQMcJm92rEU+an79GdlMn
         qe5ZAp38zHccGatoh79lJ/xqrsdjP3ORYcS440mXWrDLKvUrcFUt32wKs6lqJ614fuGr
         KBHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=9qGFA5Pwyn115zkqMMjU20DPewKOCtBu55ih+H1TP5o=;
        b=qWPvSmKasXWSkidWCH647d8ztAT45vyId5nvYrJErFSRds6VvZ0y3UpNXtDHIp/p9d
         pFRNRuvoycomUwO/KfA8LW0LIE+SuaXd0GXFa3k54jEUyYHyDTAOsG4hWuQ7ejB9MU2I
         vxf+tDAjldstpqjTVOAiuzs3CF2U3aF6AIhFdGel7dQyNbpWL1tigrVR31kJzLu6nzuE
         QdTjFvcV3mIc8IMwZBtbFk0odB/HDLeGuY5hI1cLLT7s1CMWSp/XCCjVvnzuUwL/thkW
         CFcdjDdToOUhsN57VQBPv4MpTbqTU6MSR9ZNlq1x1ybtrEemKXakG+uxhSoch0fgSIaL
         B/dA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jjC6CzYI;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id s81si147862pfg.19.2017.09.12.23.40.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Sep 2017 23:40:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jjC6CzYI;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id v5so7238105pgn.4
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Sep 2017 23:40:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=9qGFA5Pwyn115zkqMMjU20DPewKOCtBu55ih+H1TP5o=;
        b=jjC6CzYI3QYFuBTW5OkxccdVBsPOB+YoK0zbqeVRmkGhjDy20Rg0Gr4qk+evu7kNZx
         w4L+rbpPY/rFptKFoV12ew9V75OYtBNthS3mjqtRM/dwe2N19StxtAIZFnApcPOJxaGs
         +ACYwY8Ci2YGAz5RSLNLrPFb6284MvV6BlsBL6g1DEhwVLSFsaMYlR/ukdpxALqtcdAf
         nYW9y/xU9Cyuh1b7BBcSDtNjZd4r7Nxvpx/1y7ccvw57BxLcKu1ZwU8KiYEKIJKwlCJf
         OiwrdS9hj8lzMuPc7WjsJsbsLwDk4JjPW0ocwUrtg7NIZFwqLPKwGPAe3p/WxyZQFke5
         V4VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=9qGFA5Pwyn115zkqMMjU20DPewKOCtBu55ih+H1TP5o=;
        b=h+dBNExYlglgrIcFGUDz5lqMmU56qFJut0t/p7D3cIzwFhmcbzt7DhkiL2RnxuDGeW
         bbX8GQxGHWviBn3aaruRRQIG2XH5Fhi0bGd0jXNplznDQBj+p0QJFFy7VIvtxJC+5v6B
         ZGYhjp0Ig2p36WtUKxr8j/F5RWh3al1yrRvGweMUeZMGdpte8s0pOXSIl2ff+aZt99P1
         jFTd/QbryGJz+v7NQW+P0PTeky/fCIqrgOX89hAZDJ7t7Iouil3ezTQp7Q8+Z9eqG8eR
         8aetCBG301t53rfSqc+XgFvrA5MbrJxMCU79SjEy6kOJpJ8svilHFSf8nCo7kVKLSLc5
         Yetg==
X-Gm-Message-State: AHPjjUhnfx/MGww/gxTw3zhCfmNKKvMROY+zH66q0hEgFX8o5qP1nCym
	OmAzMn0Y3QukVCzF
X-Google-Smtp-Source: AOwi7QBZrUV4mGYvlGY4lMzAIR20C+MRqSSDy3CjoiHqdRL7pavh8NtNuCzsAuiFUKVS4B4MzHKkWw==
X-Received: by 10.159.254.7 with SMTP id r7mr3232633pls.49.1505284810469;
        Tue, 12 Sep 2017 23:40:10 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.172.87.17])
        by smtp.gmail.com with ESMTPSA id d126sm21185117pgc.85.2017.09.12.23.40.08
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Sep 2017 23:40:09 -0700 (PDT)
Date: Wed, 13 Sep 2017 12:10:05 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v2 4/4] Staging: vc04_services: Remove trailing whitespace
Message-ID: <68b33848437cf19e295892e93082e5b94733d4d3.1505284040.git.meghana.madhyastha@gmail.com>
References: <cover.1505284040.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1505284040.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Found by checkpath.pl

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
 drivers/staging/vc04_services/interface/vchi/vchi.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index a1c3371..ad8f542 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -159,7 +159,7 @@ typedef struct service_info_tag {
 extern "C" {
 #endif
 
-extern /*@observer@*/ VCHI_CONNECTION_T * vchi_create_connection( 
+extern /*@observer@*/ VCHI_CONNECTION_T * vchi_create_connection(
 	const struct opaque_vchi_connection_api * function_table,
 	const VCHI_MESSAGE_DRIVER_T * low_level);
 
-- 
2.7.4


