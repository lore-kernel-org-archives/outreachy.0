X-GM-THRID: 6394405934540521472
X-Received: by 10.107.181.129 with SMTP id e123mr6149176iof.17.1488813649983;
        Mon, 06 Mar 2017 07:20:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.145.4 with SMTP id t4ls2164867iod.44.gmail; Mon, 06 Mar
 2017 07:20:49 -0800 (PST)
X-Received: by 10.98.92.2 with SMTP id q2mr3943407pfb.21.1488813649038;
        Mon, 06 Mar 2017 07:20:49 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id 207si70104pfu.8.2017.03.06.07.20.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 07:20:49 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 77so7299401pgc.0
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Mar 2017 07:20:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=h/YPgX+iiWwWecGg4ocaGjRWbglSA1uPgN5JOxV+tI0=;
        b=olgCkNAGTbm8pDiRnb5PfcBCjby8+odgUzdHIbwFTdn3o1CV+sY05493rxoenROMaw
         uqUlPV7Is9mziZu/wCqZ2d75SzeFUMU2vycycsTmfw2CHQLTm5Ssn2R2SV93ANYFJ+H1
         iyWVwrFechDfI7CcF5wic8zxyT3xxhCZCOEEXGoC9QQ6WJBVap8nJl80WOr2BImIu/sE
         Z4nXSiDE/x3yfjKbzTPoYGUcntmi29PEI/WfqzNXzafgjYW6QdirPagqDAOzs4zsnIKe
         JrQJLhtqmhsivLSepmvqzpmP6DccmzbYaQrBG3p0I94tdPx8PV0uZQSf/Q4+00f5Rr44
         QyUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=h/YPgX+iiWwWecGg4ocaGjRWbglSA1uPgN5JOxV+tI0=;
        b=o/AUGtTQaupo0FB95Y0PVUQbxoyHtuVnhHCNtfT5MIhPIi0itYAKCaTuzQR4IzDVC6
         hUH04fkwTZs/n0uAORjy9TrqXIdIzD895UP1n/VIWLHOr8mJ7KDA2ygu8zIq5JnJDuoq
         /TAubZ2QSKGBzqbPj98rBIF6UKe2GzlJlE3oBKf8pHX4qXhDbDq/5dyEfWxy2Gi3JA+P
         tXoJbYXwRFjqkPhYW5fqUpCs8cAYbzXluyHtvyAJqEYmYMsgLxbEcBMVSxSj2xkkcgJa
         q33Dd/Sd3vIDxrp1C6NJrR6XXir/G1jx82e84LXwRnNEaa9qym7aa9Bhm1ZMt+iSLQ8Y
         5VaQ==
X-Gm-Message-State: AMke39meWiWjWOuHVXw6hWSoCY29Ilf+9qgsXr7SetE0cP9331vBlmlQM1zB97DbemjGUA==
X-Received: by 10.84.172.1 with SMTP id m1mr26717796plb.5.1488813648836;
        Mon, 06 Mar 2017 07:20:48 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.134.163])
        by smtp.gmail.com with ESMTPSA id c195sm40324205pfb.60.2017.03.06.07.20.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 07:20:48 -0800 (PST)
Date: Mon, 6 Mar 2017 20:50:33 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] staging: bcm2835-camera: remove function get_msg_context
Message-ID: <cover.1488813479.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patchset safely replaces function get_msg_context with a memory
allocation at the caller.


Aishwarya Pant (2):
  staging: bcm2835-camera: replace kmalloc and memset with kzalloc
  staging: bcm2835-camera: remove redundant function get_msg_context

 .../staging/vc04_services/bcm2835-camera/mmal-vchiq.c    | 16 ++--------------
 1 file changed, 2 insertions(+), 14 deletions(-)

-- 
2.7.4


