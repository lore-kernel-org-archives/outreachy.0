X-GM-THRID: 6401747273458384896
X-Received: by 10.107.133.36 with SMTP id h36mr5318711iod.92.1490522938780;
        Sun, 26 Mar 2017 03:08:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.131.225 with SMTP id n94ls3162621ioi.43.gmail; Sun, 26 Mar
 2017 03:08:58 -0700 (PDT)
X-Received: by 10.99.96.80 with SMTP id u77mr5605548pgb.32.1490522938318;
        Sun, 26 Mar 2017 03:08:58 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id s67si1221285pfs.4.2017.03.26.03.08.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Mar 2017 03:08:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 81so5482851pgh.3
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Mar 2017 03:08:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=VpiBXE6UfYIh9dHvW778u6c/WTzCE/gpoBO1eXy9+oM=;
        b=rSBUVB6SC+6TikazqWi8bMwMBpp6naIGXDzR7wAuTyYWKhMdApaXpkJEjgL0Nq471A
         T/W2KiSSNSihrmvDWmQE/SAwQH5sO9/H39Zx/RNCQwUkaSQH2HEb6qjn9x380GphX874
         6980RQHshvZ7snhlqvE/3zhbUBb5PPJEEFyIDk3SiTPdE+Iei+epIfXlciZEx/0FJq62
         HnhoTKoS2N/5nTCNk5G9NqtKhYFWk9JeMv69GtybnLsSn5lBnwHA1VuIJh0WRWW7lKQ0
         FQu74ZqmiVcF+BmLyqtyMrisN/CQ6XzJZkkZUz8Pfhqq4gZ9u80sPewKaeqaldToXfFk
         r3Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=VpiBXE6UfYIh9dHvW778u6c/WTzCE/gpoBO1eXy9+oM=;
        b=kgk7m7+1N2tQecKyR+fF34QkdhCyfK1gbx9+7yIILjmzW4Zl0lb4uV/lddDWgcHOgB
         CwKzj31C4XrK9NfB6OQPquTu24Dr+mnVRo6qbr815ZttZjKwPZ1E9Vv4gN+BNkkmFir8
         z7FXGMSdk9dv6Igoancf68VwTlvavMlkduVXZl4EQUkxA441CUZe+a3Fk0EEx0gBCtSt
         Lbg0r1Qz2+OVyZm657uOg7YkjM+dwMilBiLBuY85l0B3HBsbJxoBX3Jh5pMWQigY0hNs
         DcPS42iCciqvHgFxy7q0KY4PNVhdZ2HA02MFNcsBRDDBSdjxfHawyU/digOehcm3c9ne
         +vSQ==
X-Gm-Message-State: AFeK/H2EeSdAvD8Q1aaFDNzXXIzKPATcJ5xPOFV3x+p76guszbl+USYt1kq4tlmhVeFE5Q==
X-Received: by 10.99.185.80 with SMTP id v16mr17989886pgo.166.1490522937872;
        Sun, 26 Mar 2017 03:08:57 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.128.197])
        by smtp.gmail.com with ESMTPSA id v79sm14486285pfi.120.2017.03.26.03.08.56
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Mar 2017 03:08:57 -0700 (PDT)
Message-ID: <58d79339.520d620a.7ba80.4eab@mx.google.com>
X-Google-Original-Message-ID: <20170326100854.GA16197@<rvarsha016@gmail.com>>
Date: Sun, 26 Mar 2017 15:38:54 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: mawilcox@microsoft.com
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 5/5] include: linux: pid: Remove space before tabs.
References: <cover.1490516333.git.rvarsha016@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1490516333.git.rvarsha016@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Remove space before tabs. This patch fixes the following checkpatch
issue:

WARNING: please, no space before tabs

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 include/linux/pid.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/include/linux/pid.h b/include/linux/pid.h
index 1de53e8..43acbd4 100644
--- a/include/linux/pid.h
+++ b/include/linux/pid.h
@@ -144,10 +144,10 @@ extern void disable_pid_allocation(struct pid_namespace *ns);
  * allocated.
  *
  * NOTE:
- * 	ns_of_pid() is expected to be called for a process (task) that has
- * 	an attached 'struct pid' (see attach_pid(), detach_pid()) i.e @pid
- * 	is expected to be non-NULL. If @pid is NULL, caller should handle
- * 	the resulting NULL pid-ns.
+ *	ns_of_pid() is expected to be called for a process (task) that has
+ *	an attached 'struct pid' (see attach_pid(), detach_pid()) i.e @pid
+ *	is expected to be non-NULL. If @pid is NULL, caller should handle
+ *	the resulting NULL pid-ns.
  */
 static inline struct pid_namespace *ns_of_pid(struct pid *pid)
 {
-- 
2.9.3


