X-GM-THRID: 6200043059490586624
X-Received: by 10.182.117.225 with SMTP id kh1mr77048obb.12.1443560016211;
        Tue, 29 Sep 2015 13:53:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.157.149 with SMTP id g143ls58181ioe.30.gmail; Tue, 29 Sep
 2015 13:53:35 -0700 (PDT)
X-Received: by 10.66.168.12 with SMTP id zs12mr2451pab.37.1443560015742;
        Tue, 29 Sep 2015 13:53:35 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id el2si3692793pbb.0.2015.09.29.13.53.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2015 13:53:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pacex6 with SMTP id ex6so16307278pac.0
        for <outreachy-kernel@googlegroups.com>; Tue, 29 Sep 2015 13:53:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=CZeIuuj+yK0EZSmipP+qm/EfL0DOX6WXQsopuRvAa9I=;
        b=O3d1giuEt2UjrXvx/vPPsvCMlr1BHO4jFRGDnoG5cSwjgEiQneJXGLbqHBup1bW6Wm
         N+m98h9Jxy/zPa0th3aGkCawKLmhxYnft3LCCXKS+M39Jju+G0/NNiT+myQ7zCF4HVOk
         1KUUpHnFhLy+8j4GqlP0t5WZ9yCPMZlX7ZEF2Hm5qN7C7EyvSsPe7Rb7suRIeBjiypNJ
         /3xZKAexT4UVxroMpuQUsLJnyz7It0VrPy2htxsS2OU6Dn/313rtE5C56R9dH/ASQqtR
         IaXXTE4tXz1nVawodvwJb9qhhSDCWirEszfIEydYHUD2Ce8v7J5eq8N0mcl5tH8lTsCy
         TsGw==
X-Received: by 10.66.248.10 with SMTP id yi10mr103420pac.6.1443560015632;
        Tue, 29 Sep 2015 13:53:35 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id o3sm27468284pap.37.2015.09.29.13.53.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 29 Sep 2015 13:53:34 -0700 (PDT)
Date: Wed, 30 Sep 2015 02:23:25 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Drivers: clk: clk-mux: fixed line exceeding char limit and
 irrelevant messages
Message-ID: <20150929205325.GA10085@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Fixed warnings about line exceeding 80 characters and unnecessary error print
statements.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/clk/clk-mux.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/clk/clk-mux.c b/drivers/clk/clk-mux.c
index 7129c86..2ef8eda 100644
--- a/drivers/clk/clk-mux.c
+++ b/drivers/clk/clk-mux.c
@@ -35,12 +35,13 @@ static u8 clk_mux_get_parent(struct clk_hw *hw)
 	u32 val;
 
 	/*
-	 * FIXME need a mux-specific flag to determine if val is bitwise or numeric
-	 * e.g. sys_clkin_ck's clksel field is 3 bits wide, but ranges from 0x1
-	 * to 0x7 (index starts at one)
-	 * OTOH, pmd_trace_clk_mux_ck uses a separate bit for each clock, so
-	 * val = 0x4 really means "bit 2, index starts at bit 0"
-	 */
+	* FIXME need a mux-specific flag to determine if val is
+	* bitwise or numeric
+	* e.g. sys_clkin_ck's clksel field is 3 bits wide, but ranges from 0x1
+	* to 0x7 (index starts at one)
+	* OTOH, pmd_trace_clk_mux_ck uses a separate bit for each clock, so
+	* val = 0x4 really means "bit 2, index starts at bit 0"
+	*/
 	val = clk_readl(mux->reg) >> mux->shift;
 	val &= mux->mask;
 
@@ -138,7 +139,7 @@ struct clk *clk_register_mux_table(struct device *dev, const char *name,
 	/* allocate the mux */
 	mux = kzalloc(sizeof(struct clk_mux), GFP_KERNEL);
 	if (!mux) {
-		pr_err("%s: could not allocate mux clk\n", __func__);
+		/*pr_err("%s: could not allocate mux clk\n", __func__);*/
 		return ERR_PTR(-ENOMEM);
 	}
 
-- 
2.1.0


