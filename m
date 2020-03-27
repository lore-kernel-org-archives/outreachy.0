X-GM-THRID: 6808597928719941632
X-Received: by 2002:a5d:694a:: with SMTP id r10mr14628570wrw.234.1585316951960;
        Fri, 27 Mar 2020 06:49:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f2cf:: with SMTP id d15ls4172322wrp.8.gmail; Fri, 27 Mar
 2020 06:49:10 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsHsxBix56hLqv1yeWlae2iVkUnJzqTOBgN6EK8VS4ODPz2DlUeHRue0qedoGlP0iT2X+bG
X-Received: by 2002:adf:ea83:: with SMTP id s3mr16271841wrm.25.1585316950731;
        Fri, 27 Mar 2020 06:49:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585316950; cv=none;
        d=google.com; s=arc-20160816;
        b=G9sxGsXi67CshX8KVHQ+JtMl8mr8f5sLA4tefrMsygnJbTOsQgfDFYzFUAtqDs8Ax2
         gyNjCUEaY0NZM+IOjhAVygpOW8xTywdlImUEV2pdgR+QYtMfeWrK33zbk9+st4VU53Mr
         15ophfDgYzrY54KiaoetVnenGJ7fSFlaqDDPr/6Y6GR7v7SHpDRN4UxYWI3atSCN9iMP
         ULQx+unfVQ8sE4apVaf1/UQMEAbezWHVbW3Kdy8Y/E5vWPBWnvc9heqO3AxR0oGoT7y3
         loZUCJX2rqTbRrzSxjXYoRui5HveB41YwPD3zUAZmaUPeFbJAzX3qW2Wc91Ty+OfGjxq
         6Zjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=xek5mgkgj2MQE4OGyUesPu31EiqvDXDpygOcuBpmU4M=;
        b=p4ugzr1XQjScC+mhn6HVrBdq7DtuMzZPnjjkAwarw8b9WjSjuVNteaxfZf48WlTSvd
         n2JzQICw8Sjm7WI34h35WRGld/MBYA7REbZkTBQ2i/MyS5etihnArGeuewa16ySd1RyK
         zUG2tH3kUZzQFQLsV1+EmOBo8KnBMX6c7hfY8TucYwp9pZRqt4wrdymmoxQcbAAZP23F
         UKWWBVODXi4qqMcZcN6J4qIT6Wu+xHdoXXcl1BJQcatrfMSJScT3Oh0ghWBBE4Rlv8tQ
         uKN/a70woTURj6qVh8l4HUz25m2kp9B4QzXqERgOyoqcSSvci7SwLL2VmqnyAbYm5Atl
         7wsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="it0/PCVR";
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id i22si394578wml.0.2020.03.27.06.49.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Mar 2020 06:49:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="it0/PCVR";
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x244.google.com with SMTP id t17so10248006ljc.12
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Mar 2020 06:49:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=xek5mgkgj2MQE4OGyUesPu31EiqvDXDpygOcuBpmU4M=;
        b=it0/PCVRyYt8TqFjV39rapb+C/Y96tiK1b9ZuMgYep0sbQsdoQaVQZkr5pgeJToQNe
         EnmnpddqpRnJ68dIO8OMD7xwaQiIaNhMg5NmslDR8waJq3i+s+53EUBB4Ah1ARfyta/j
         SUQcmUxNMkkpf391cDKy9BQezHfITbtv+MNrCLU0Axto9JDq2bZbZvZhVVHGyM0EQnbT
         2vXE7FvdtZXa9zkcczx/chumLaoMNdV2F9nO32qAdYHRt6G3ZKrUFiGswBUNu8RilbMk
         DZKx/R8EhW5e34PBLeGUDkAFzHjhrUhGup3cihu637MO8NOCqmFtG9xBQ/SrTPYJWqZk
         HXig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=xek5mgkgj2MQE4OGyUesPu31EiqvDXDpygOcuBpmU4M=;
        b=MLpVHn9Vkc3soxvgqcpQJMfwJUqzZ97hCoMRS+BKWGTOa2xMtshnHTak1ZOBOUx5tT
         IwUPofidEC1N6ja8XXnLqPfQUjWVCjDhROMatFwRg+iouXPJJEabjkc7k/fVkxg9JlTv
         g2DHZDmtQ6X6CwCk/Pdg8xpa+U5dGE7tjm4B+EQGZcO3zCZejLra4Dta5R60F7yTW+JR
         GOWtegDT3ooxJfGPpK/s4CDBWsN3o2iibQ4jbTNmEcULkprhcGvYLLyRHMhMn/3S+Di4
         8MpNOP4Osd/OaWDJ7X78B4GosZpNsb5CgTqKVuZzBZQVK/qk+C5l4J/xbZLECyYn3y3Q
         MZMQ==
X-Gm-Message-State: AGi0Pua34ZM0vWyBw5XjtSbZXMs1gmybJJ8h1WEo6DIXGkQj8HW950Fq
	mQuL8XqnNhAqE/GIgBvWjDo=
X-Received: by 2002:a2e:8105:: with SMTP id d5mr8518796ljg.172.1585316950208;
        Fri, 27 Mar 2020 06:49:10 -0700 (PDT)
Return-Path: <gokcekuler@gmail.com>
Received: from siyah2 ([88.241.65.149])
        by smtp.gmail.com with ESMTPSA id 24sm2743507ljv.105.2020.03.27.06.49.08
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 27 Mar 2020 06:49:09 -0700 (PDT)
Date: Fri, 27 Mar 2020 16:49:06 +0300
From: Gokce Kuler <gokcekuler@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v4] staging: qlge: Adjust end of block comment
Message-ID: <20200327134906.GA10286@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Drop an unnecessary * on the last line of a block comment to follow the Linux kernel coding conventions.
Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
---
Changes in v4:
-Odd line-wrapping to message.
Changes in v3:
-Add v2 and v1 changes in e-mail.
Changes in v2:
-Edited the subject line and the log message.
Changes in v1:
-Drop an unnecessary * on the last line of a block comment.
---
 drivers/staging/qlge/qlge_mpi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/qlge/qlge_mpi.c b/drivers/staging/qlge/qlge_mpi.c
index 60c08d9..31322ec 100644
--- a/drivers/staging/qlge/qlge_mpi.c
+++ b/drivers/staging/qlge/qlge_mpi.c
@@ -1178,7 +1178,7 @@ void ql_mpi_idc_work(struct work_struct *work)
 		/* Signal the resulting link up AEN
 		 * that the frame routing and mac addr
 		 * needs to be set.
-		 * */
+		 */
 		set_bit(QL_CAM_RT_SET, &qdev->flags);
 		/* Do ACK if required */
 		if (timeout) {
-- 
2.7.4


