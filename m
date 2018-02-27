X-GM-THRID: 6523882080322977792
X-Received: by 10.99.165.91 with SMTP id r27mr1544896pgu.83.1519738046267;
        Tue, 27 Feb 2018 05:27:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.60.3 with SMTP id j3ls278040pga.15.gmail; Tue, 27 Feb 2018
 05:27:24 -0800 (PST)
X-Google-Smtp-Source: AG47ELta5MtSFMue5qbDV61N9SENcN8Sfr0dROzjiDUeMu5bXjiZ0K7mjsSxS+whZKyWMQzJJfOY
X-Received: by 10.99.170.10 with SMTP id e10mr775785pgf.129.1519738044923;
        Tue, 27 Feb 2018 05:27:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519738044; cv=none;
        d=google.com; s=arc-20160816;
        b=zG6JYUlTJqgflnEb9XQOPWL/pLPvw85Xs1vW6aNmRmv9HXwcdCHygnWFGk7AG7XzE5
         qbsIs7h/SDq2NF6ljgqLZHQI260o3AO1EAS8nNgrQpnrgtnfnM9VSXXlgYE5OeTsA1J9
         7QcOA0r+o9LnM8xZIWt/O1dJzdoTM0iVfkxytN53DOK8VEe5dq4icxFDnUtoSfdzx6Fb
         vOxKAzQtCyjL4rQWqc9ictm4ysGbMdw7Gw6nm7vRC3o7vHppICdWBXWPyF5WsDWVODLq
         bL/ugipOVuWY0ApE6TGR25NkCLSpk+J5HUUDWlIDrrIDXTK90RrLK6qOoDxYJdy0AZjz
         otqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:to:from
         :dkim-signature:arc-authentication-results;
        bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
        b=PnV7Zlg3OCjl60iweAumgAc2X5Y+0wFuvCDDffotGLgyqN0eaBBSNK1knPZTyRghQ9
         5T+kaNHhb/RWiS8tOc3UylZqKW5sWxFZZ/E32NNB/GnmIANeradJlZmjGC91mPpKxB/f
         36YI//5tq6ZQqNZreP2tIMFjrFLKLQvcVTRWQ1Ay1STJehVObDwbM3FBgCqhFywF1NcX
         El9qeJ10bYy/CYmT5UdqB3AxF6xdkPQS2IiKnIO4CoDgnMB/ITI6CMKk4BuV80mgF9xf
         bbSscZmBSsPAq7S4Jh8ldoikI0SYg7T7ryBKxi/eXiGf15rmZb9jg4j2D1558Y/H0lf6
         9ywQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=NLDQUqkN;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::22c as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pl0-x22c.google.com (mail-pl0-x22c.google.com. [2607:f8b0:400e:c01::22c])
        by gmr-mx.google.com with ESMTPS id w4-v6si935972plp.4.2018.02.27.05.27.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Feb 2018 05:27:24 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::22c as permitted sender) client-ip=2607:f8b0:400e:c01::22c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=NLDQUqkN;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::22c as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pl0-x22c.google.com with SMTP id bb3so11354942plb.2
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Feb 2018 05:27:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
        b=NLDQUqkNVK6BbLim9nY1iwootjOqRbAKr/WRmqZ7Z5Yv6Xz9plJ/MROiyelTpr9qLi
         M6aTQDe0VetPKACSy64SZmcycNKsWPWTjiUTs1QDNQ5OC1H5zDC8/dU3/o7loQb96GSZ
         siYF47VTpgAwSr5kqKo7RntCDMWSCxOC40mI8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
        b=Zd3BuUQg1aLQfBobd/eQSyIWvbZsSZstiGymQGnB+1bj+h/15kPmQI2J+M9WzPCEPO
         CpK7+v2ZRTKnLW8EquS9RvZDWIfIhFMwekCJkS2iCx1f37/wvnSchhtsZYTj7HD3NSa7
         d+ZVwh6Rr0bEWH3bP98tJHPtqZgoCKd1N3qZgd6YoQPMF8g1uWFHDH4E5xtKO+TVJOPG
         fL2h6gSO5zHlktuCE5Mb3z4y4JNFey9CY8OmZlPLyHEZofr2OtPVQahtrKpYGtmw0Aze
         q7fwwWLGom9ZDGfmnZaqr2TBWsUOAGnekg/AsgjfAJt9gGMQ9M7S+4QeU8O3PxFCtDx2
         oYQA==
X-Gm-Message-State: APf1xPCH8LzCL20/y1+jK6v9ObzDIus+32jZz7zFxizLAvp7D2OubDnl
	vHgNtNH/bM36senqHRsp3L0z42VR
X-Received: by 2002:a17:902:b418:: with SMTP id x24-v6mr14083624plr.320.1519738044443;
        Tue, 27 Feb 2018 05:27:24 -0800 (PST)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from ashoka-ThinkCentre-E73z.internal.ashoka.edu.in ([125.22.40.140])
        by smtp.gmail.com with ESMTPSA id j64sm25555674pfe.68.2018.02.27.05.27.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 27 Feb 2018 05:27:23 -0800 (PST)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: outreachy-kernel@googlegroups.com
Subject: 
Date: Tue, 27 Feb 2018 18:57:14 +0530
Message-Id: <1519738034-4865-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1519401525.2617.295.camel@decadent.org.uk>
References: <1519401525.2617.295.camel@decadent.org.uk>


