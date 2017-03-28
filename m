X-GM-THRID: 6402542021433622528
X-Received: by 10.157.54.227 with SMTP id s32mr1014288otd.86.1490707979697;
        Tue, 28 Mar 2017 06:32:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.27.138 with SMTP id b132ls4749787iob.5.gmail; Tue, 28 Mar
 2017 06:32:58 -0700 (PDT)
X-Received: by 10.107.192.5 with SMTP id q5mr9275568iof.102.1490707978837;
        Tue, 28 Mar 2017 06:32:58 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id g82si586237pfb.5.2017.03.28.06.32.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Mar 2017 06:32:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 81so21392750pgh.3
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Mar 2017 06:32:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Tz8lOn8aeg00Otv3V7fCbIAnn8Ne8HmeV1lzDt5tYDs=;
        b=RkiTscnGPaVDe2TmcfaplayyK3tLbpFQAg2MbCjdXj1DOrH7ejY77XcEG7bjtbEIY3
         /f9TXYVxPdGQrqwx3kaw7UfWE8cm5plTF0Su0CeDqJgqsTTndZmTrOTvZ1Eo2qCKFHgC
         KlG6cFQtyjgYryu9Aat+HEMFbtgZAV1ryExD/9JcAD8QlKUN7xZTmUHXc8ALKA6G6C8n
         aapNv6RdWTrySGDpxKO6vHd8xlwjvQXKbbawbHL9V1GEFQSnaKYPOufg+bzOFqzqgw56
         gwh0HYZ+OEloLEEPj2LDorVdH1dA3ZMelySrUrSAPZjZdrlZufvng5kUNi1LGwXowzly
         qZqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Tz8lOn8aeg00Otv3V7fCbIAnn8Ne8HmeV1lzDt5tYDs=;
        b=bX9qh/rNqsvZ89UEmL3NbwsEWsg48/nFg13WsJOe1UdPTVP9hNvFZIalnQB6SA7igL
         3uIR9ZcYHgrLt/v6e3SX8ECG2C1azR708Up5/ZNu7SfFmH5EQFoTlgs/bx4Om764cPwx
         tE4FtSoSv8IiLz4/LEYBoe3TPya5u7gokeI78Fn+VOxVfA8kR4/Riqp5XHq9ukk/qZCz
         +M57Pmj88q5CzBdLKDDiouhy/oQmXFhXueuONm1EqbpXAT+8wYlO17M2bpym9q+B0rAN
         EI70HAp5JFZA12DCySuvTCE/E6sA/4LS1QGRo44kWEU7hxxms82DsxouLevhi9IGIt1e
         0rMw==
X-Gm-Message-State: AFeK/H2QPtE7oR52I3NZNqCtWaPDYLaep34FX0UUhqZWh0AU4GpvzwMOlnB/gYq49R130A==
X-Received: by 10.84.204.8 with SMTP id a8mr36549678ple.4.1490707978544;
        Tue, 28 Mar 2017 06:32:58 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id b80sm7684530pfe.87.2017.03.28.06.32.57
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Mar 2017 06:32:58 -0700 (PDT)
Date: Tue, 28 Mar 2017 19:02:56 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: pablo@netfilter.org
Cc: outreachy-kernel@googlegroups.com,
	Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>,
	"David S. Miller" <davem@davemloft.net>,
	netfilter-devel@vger.kernel.org, coreteam@netfilter.org,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] netfilter: ipset: Use max macro instead of ternary operator
Message-ID: <20170328133256.GA24590@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch replaces ternary operator with macro max as it shorter and
thus increases code readability. Macro max return the maximum of the two
compared values.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 net/netfilter/ipset/ip_set_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/netfilter/ipset/ip_set_core.c b/net/netfilter/ipset/ip_set_core.c
index 10a3694..248fef7 100644
--- a/net/netfilter/ipset/ip_set_core.c
+++ b/net/netfilter/ipset/ip_set_core.c
@@ -571,7 +571,7 @@ ip_set_test(ip_set_id_t index, const struct sk_buff *skb,
 	}
 
 	/* Convert error codes to nomatch */
-	return (ret < 0 ? 0 : ret);
+	return max(0, ret);
 }
 EXPORT_SYMBOL_GPL(ip_set_test);
 
-- 
2.7.4


