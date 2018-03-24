X-GM-THRID: 6536503854152810496
X-Received: by 2002:a9d:4919:: with SMTP id e25-v6mr7540022otf.2.1521898530273;
        Sat, 24 Mar 2018 06:35:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:5d0a:: with SMTP id r10-v6ls1518158oib.13.gmail; Sat, 24
 Mar 2018 06:35:29 -0700 (PDT)
X-Google-Smtp-Source: AIpwx4/P9l0okx1UTogxEmnnbi0D/sdGKGvGxW6NJco+Rn1OpZWRZZP39C8tcnFRb6GFCxnsf1kx
X-Received: by 10.202.194.130 with SMTP id s124mr5100179oif.33.1521898529333;
        Sat, 24 Mar 2018 06:35:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521898529; cv=none;
        d=google.com; s=arc-20160816;
        b=fW2+1iS3B1rlxAUyies8pxEAUhmLz8SphAbX2Jv9DXTR35Arsxuudw8oy1bFw7zuCI
         jqaciVMgsUPg+FstwCSBK66OB8RgJZVncrfI1FQ9qx8oK+dtMigBBXKI4B+t9VKxnrDb
         CxbMFzlpsVBUHMDAVAoH3MMyDL6AfhufUFMW3mfje2Yx1JQ/ZpI/hLllsNmTeZ09jPbf
         a54GA7Wd5mcO7tAFGHxxiGhtHt8Sa6cqUdOE9VzWN4Rya1Q9T2tcyC7vfv/J13p6j++6
         KL2LSTMsZuAnPUu3YwmFKZgfa5v+zbzG3i65lmtVDbEaL1TUtngr+OfaUIJ1OEhkrpdW
         6paA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=xSNffMZWviv2fyjQ4AHvo/aiELy9ht6LkwjfWXG8hcM=;
        b=Hzgykavh/isJ9nWA7DpZJ7yhE01nAYLaTMBHL6oRogKk77PH7HGPwjsNT/UidgNXMT
         58vTqq1jU4f9oFjYVQkrL41FmYXgNqxZB8vORhPPDo70TuyoFH/feNJ+Kz1zEN5t0G4H
         JA/MgMeiWcC7/FNn/8l4y+U4tETfjj5iW9tFHJm42gf5S2PyZhEa8PlHs0dTezJ358mI
         Fs6TbyAGKrFTJCznNK+7DS7uCqkCqTpRNRiJNZ5MgbHCRqpR8WRO5DBROxNZoY4RId81
         IPxOYwwb7xA7Y/ndhfdk4ijeBXvzikPhYkHt85rsS1ezhjSBmZ6VQYepicUKvpTk0yML
         VSFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=gqorqgwV;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 15si808094oix.3.2018.03.24.06.35.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Mar 2018 06:35:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=gqorqgwV;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pf0-x244.google.com with SMTP id a16so5791498pfn.9
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Mar 2018 06:35:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=xSNffMZWviv2fyjQ4AHvo/aiELy9ht6LkwjfWXG8hcM=;
        b=gqorqgwV8q6S3/wq+csVmjQ2nmeMoUGAU0qyVjqXrg3Gkiu77NMWwTQis+7bs1gaHh
         gv9q2P6xEd8JFyN7jVBkgCwVwxPvV9IyfYFP1aNVE4y7iZlR8Fib7hZx5FpeI8bNI4lY
         CYB9Loqx87HciaLjrNWqUg/6/zat+UpwK+Tzg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=xSNffMZWviv2fyjQ4AHvo/aiELy9ht6LkwjfWXG8hcM=;
        b=MCS8qz01EpAe7cOlN/DkDLSalgmuiFgPuoIG1G8jAjNH0Zx/WMVzkpmemfMi2ncnkq
         J/Y6/ABh8pIivHjZOVAWVspNejAA7Odi6P9d6YGD3C4evv2CC2Y++txRzCAzKJsv6628
         OMVzAIfzElrhk+C3kMiTf+qj4ZDr2umNhAe0+NPIJjqitwTFOu2Euu92Zd7dYHOa4n9P
         P2cZ6qJr/TvvBL2fM9vKWJPq4F0xt17Kh/cwpKyd3yZ9hova0GscsnTG1s98ZjzQi5/Q
         s96bCesY14127NOIiRXXZQSbzndDOLMWzbJEeQbHT5GKYkpEi1wtkqImlNwBFRPEbNli
         y5Dw==
X-Gm-Message-State: AElRT7GA/mardAxAb6kLMtvL0G+Qtf0kBR/KrCEBlGvXzAsp8VdCLaeT
	Rtz75Kt7NT0hyTK74r7m9/oxVg==
X-Received: by 10.98.225.9 with SMTP id q9mr15610654pfh.23.1521898528665;
        Sat, 24 Mar 2018 06:35:28 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id m68sm23581202pfk.107.2018.03.24.06.35.26
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 24 Mar 2018 06:35:28 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: gregkh@linuxfoundation.org,
	mchehab@kernel.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH] staging: media: Remove address of Free Software Foundation
Date: Sat, 24 Mar 2018 13:35:17 +0000
Message-Id: <1521898517-29189-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4

Remove address of Free Software Foundation in case it changes. Issue
found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
 drivers/staging/media/davinci_vpfe/dm365_ipipe.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.h b/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
index d81b29e..2b8d52c 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
@@ -12,7 +12,7 @@
  *
  * You should have received a copy of the GNU General Public License
  * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
+ * Foundation, Inc.
  *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
-- 
2.7.4


