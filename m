X-GM-THRID: 6401819323480932352
X-Received: by 10.99.105.5 with SMTP id e5mr8492454pgc.0.1490643973746;
        Mon, 27 Mar 2017 12:46:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.13.116 with SMTP id 107ls325752oti.34.gmail; Mon, 27 Mar
 2017 12:46:13 -0700 (PDT)
X-Received: by 10.157.67.134 with SMTP id t6mr8559495ote.83.1490643973404;
        Mon, 27 Mar 2017 12:46:13 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id g82si241686pfb.5.2017.03.27.12.46.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Mar 2017 12:46:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 79so15432433pgf.0
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Mar 2017 12:46:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=EO2iE3HMyicVYcfX+76EIcGrDcqWIC57zIVoB0ci9NE=;
        b=JKszayUSVc0fntBNqNQsyzjmu3zTNMOxTYU7bChbheWMYV+KY06lFZE0flmy/N4I7N
         IEJimeY4ajXTx9NiUC1hJ2Wf7zmL1B5n8RcEHq6L5p7/npOu42WQJ851M3GDc6c4Ns9+
         cl03rc2OjB/VYkG6/Oqhmw6bmsBJA5CjNt82BtfGwPJRKTPvU3TU9sqX876uE5fVwHaf
         ACpwuxlrxmPySfmAtkraO+94SDYV7YrFY/IP14ybnbCWsjl+Qn8LUfcpkt+wmTZfT6Fm
         WXY5Qv8wIyLj9P7zRjMreEYQ7prdZpbp3FUFI5HMW7Le/8AwPWemmmX5B0LA7XqyLJ0o
         RXOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=EO2iE3HMyicVYcfX+76EIcGrDcqWIC57zIVoB0ci9NE=;
        b=f+FzKSKzBH0vojH2yBT4pL2/hG/ACUTgXTE93MQZEvLroxoC91gikXu9GVkFJ2kLoI
         KKeOEN7BSOpjD/UpI+O3dsQbGSW6Vwfx/TiCRAcTi5kmxM/ohkO4mb+qOcqF2IpWhXUa
         pLFclSSQw2Pz5czPUVsdJCi0ZiYEk+nIEZcMZT56mv/FA7yaABqMUsGX/XJpHQX7FYUB
         La+1jzBAwGtGEPF4y3bG8aj/GkHaJIzOrccigFVNEbRVIfxvRCh1UHTCIMgUgtAJaxjP
         yX5R431OyjSP4scoygx1qxx+ZQyVd5XHc2UFv/b45P7dNJ4QU9JQnI3O002mX58zATMF
         u53w==
X-Gm-Message-State: AFeK/H3qMjTg1gBWllXOSpJflA3mLAk/+XQCz+a3j2gXy9rUB8U2t+37DVnRnmC1N0i/dA==
X-Received: by 10.99.67.3 with SMTP id q3mr8731673pga.221.1490643973147;
        Mon, 27 Mar 2017 12:46:13 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([47.9.128.122])
        by smtp.googlemail.com with ESMTPSA id x15sm2755339pgc.16.2017.03.27.12.46.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Mar 2017 12:46:12 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: mawilcox@microsoft.com
Cc: outreachy-kernel@googlegroups.com,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v2 1/3] kernel: pid_namespace: Fix line over 80 characters
Date: Tue, 28 Mar 2017 01:15:39 +0530
Message-Id: <58e6130ea7430fef9659f81f5b13c054376c10c7.1490643620.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1490643620.git.gs051095@gmail.com>
References: <cover.1490643620.git.gs051095@gmail.com>
In-Reply-To: <cover.1490643620.git.gs051095@gmail.com>
References: <cover.1490643620.git.gs051095@gmail.com>

Line over 80 characters are split to fix the following checkpatch
issue:
WARNING: line over 80 characters

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 kernel/pid_namespace.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/kernel/pid_namespace.c b/kernel/pid_namespace.c
index a4f9a75..9315258 100644
--- a/kernel/pid_namespace.c
+++ b/kernel/pid_namespace.c
@@ -92,8 +92,9 @@ static void dec_pid_namespaces(struct ucounts *ucounts)
 	dec_ucount(ucounts, UCOUNT_PID_NAMESPACES);
 }
 
-static struct pid_namespace *create_pid_namespace(struct user_namespace *user_ns,
-	struct pid_namespace *parent_pid_ns)
+static struct pid_namespace *
+create_pid_namespace(struct user_namespace *user_ns,
+		     struct pid_namespace *parent_pid_ns)
 {
 	struct pid_namespace *ns;
 	unsigned int level = parent_pid_ns->level + 1;
-- 
2.7.4


