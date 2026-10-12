Received: from sonic315-14.consmr.mail.bf2.yahoo.com (sonic315-14.consmr.mail.bf2.yahoo.com [74.6.134.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D4F73E171E
	for <outreachy@lists.linux.dev>; Mon, 12 Oct 2026 22:40:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.6.134.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791844802; cv=none; b=G967mdVjXEGY0cuTcHBwDjxI5P33u+4GbQNwm91OA9odevmjQbzhSpdJoxtFwE9rkdsBVck3z0Crk9pqPLjYXGZJ6zs19zfBDYe+mr7bzKUlvU3fum/BMw1JD7DNhGF8+wtG2cq66jmzmhiA/85kL6LRzdy96Th7mrsJV0n1OQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791844802; c=relaxed/simple;
	bh=gCXOaRk/vTK1DhL6qLIW+SHbOH4P6Jjkw3OH9+v59+M=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:References; b=pq/OlojO8p2UBZW07+v2Y+K9i8sQyOmNkTWU/xpLpqWvfqIFdPUvF4XV5hzZOke7Vjgg7jWtGoxPBmZwC2e34g0ItTGqdPBoqkPrsE6I/krWp9OpLSheU3Onf95FR5hA+BBsQ1/CqYWsPEeJHHmYyV90fLJBU/4lygmyCyiN+SI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=yahoo.com; spf=pass smtp.mailfrom=yahoo.com; dkim=pass (2048-bit key) header.d=yahoo.com header.i=@yahoo.com header.b=R+50VtBl; arc=none smtp.client-ip=74.6.134.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=yahoo.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yahoo.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=yahoo.com header.i=@yahoo.com header.b="R+50VtBl"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1791844794; bh=1kalAvIfHRcDXkPRqDq1U6FEwWATH8wlkkkNkAB8hQU=; h=From:To:Cc:Subject:Date:References:From:Subject:Reply-To; b=R+50VtBl9iLl7Y6pO+oV09WYavOtuqrVAt83zqbVVMD2GItIWI0+oEWUPF5wvKf4HubyImVILycTei+leUJANDNT1yId7brChn/+sYsx4DEMWxhiSPiJc/3W1jKMeMV0hRC35CsJKWw9irCa8Dwed5Myd/RAgPMlMJgURnF7juMPGawskeS+7VFeJ2MSPYRXWvHfEMYBjHgM7LKD7d4hC1cpPKYmWQ9n+sSwb+gD6T5EcU+GIrouL+IGTFhEQgaRcXQs7Lastj6y8cyPx3aZCXyC5bjlDy3LmfJNxmra2SoxdvZBen01xUmrYBy7/XF0AOg8oO2WThTcx6T03d/3Eg==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1791844794; bh=eL1xfAoZwZC+NSHYQAMKlvboJVgtKC4K2+ok0VGPavK=; h=X-Sonic-MF:From:To:Subject:Date:From:Subject; b=TQ7U+lkwLTlnfalFpzOqa6/OrfU4FJG6VeazsfajXqUUngUaIcKjwKPlCiruJzOdocXS3b83kqMgtZcCwWy0hV8kXUlcV/OB5W3VNfycDarPPPn9OP9xtobE/2q8bbmFcGw6sR6t5o1Rt7gKL1tPnkIF54r1N6CvnlN4pn1ZBaHIGjWtDu7j2iJ1CA1RTikHY8pcH7Otxzz1Ti+pn5dTjq/DI6zgwtrGJHzzrs7ySn6DuHv9t9l3CwdwcD4+tQmVA97N+07FE5DX9tHNQD3zIZugniXxarVteVXch68yRz1LtmfEbxmIw7WJsBpknQ80rZkGlA5uieI6fdH/8dFc4Q==
X-YMail-OSG: WsPGVZ4VM1lk5rK6O8INNCb4QEKv4quJAIRBag814Wjy4Z_pNv8UvTlYC8wOQK8
 oC1ONmI9jqNUZ2Vml97YYPrS1PYkrbOMRP9bvB0FKNWD2jMhzKk3eTXrGkdfxfu6kFK7XHxTw2eV
 GvFCbUdETotJ3kOts530bBsaVRpKnBEBMCGgQtNXDuYeH4p0yHn4LNDRmFVTZFgJzNDVbLgIj_eV
 3W4BotQgNHmEw.rhWhCc7LxCX4hdNkA3UZnsHLzA6MDhVVIDQ.gLKs.l7Xmr_9YkQdR6uDIA.Xa_
 epBLhDZYPdcBw_Zr1IR2kWI94WjP_dbT91dR4oNoK0Y6lCLUSGtrDu5MzOEincW2JRxuSD7ebbA_
 SrJ6s5CgWdDasS5oBlJ1JtwCi7MVjXxJmtu79K4ZYoH9ZyDAfmVNE6caZb8VJU4BZ8tIua4PyeNA
 cwYX0FYD5qOmQNyHU9_juJZIfQim5sBaM2gE1a0xXljJ0xzNQKXKO7aOvnYkKJKCKwUgN9XSbSxh
 LjiYOoacyJ7Qz8Zyjp9YjlONK42mY9eT1b062lEj359glBG4Q3ZpPkmusIDAU2E0TsmV4c.dWidA
 ZM8SIC9LRxo0XSs1Mjjkjkg9CCc9vepX2eFxsuYyIQ_wSAO3DueamvVibwGxBFIK980HO04yHOu9
 8zV43_mRwpcldbixsr.oHg.dloVDz8DJN_HBBUODVoaNW.jiXUup3yQG3xgMgT2kipcdEIiRGsLK
 6UGQUo7vxOedQOchdVHEN50a7R7jADSXA1Mjqk7o_Srql2pI7TUz1Pqc69NTURmllkufaqMx0yRl
 pQshNX1OcMnsT5tKqSN8FI7WmG9DJ8a0LNjuTWBvVH0Kw4uM01HCcYXxW9eBnW3iIEq8bLZ3ZQKm
 nDN.ilq2NfqX8jDilTkrpO9y1qkuVLqz8klQipypeA2aCVweDVwUv7KaVtuPBQdBVNrE35WNYTnK
 M88kMjBAeO2Nl7BMPIZcMXxcu0ycrT3yLrV9ru2k.JsXL5jiP4XcY24gtofK.8fsFd1qWbtIdRN2
 1NmkPcn9kgYTaeiokrXlbFKZbHPzA1EwhGpmYZ0BMPA3aCYhXPlAd41V2KIOswwqI4H9NSZ2jfkH
 A1giNabkV9EvitU.UCIV2.ubHmQJNg.RCKCR4yLhzcadacgGyOpYXvOdum30PIOULHHKwNS2vLwc
 sajljcqGfENyHnBn4y26BWHjS6XAo9WlpLJ26NxpE6kaUrPt6.KZ_Zeb6sAdAAtyWvTxmJ0Vyd0W
 NY79l61YppTAKSTmrHqi62sgxEEu7jLNoy.mAl.2RpTWLYrpCmpPV5lkmHVhyhuedTzsNGKaTSkN
 asxiOg_f.W9owsf03AVpYO1hTavSKqxe.EFefYETrdzLz3v6lssSrfL8O7aauyZUAXzZYj.5Hqc2
 _1XdqOZlcYUruh3cL1rVLyHmvurIvmpTjdLJ_gflCC4BcEClA8B2rEPCuxpJrwJhLpHXGnOmDquO
 UJ7PNABoufp9Qh76fQticUKd0DhnLZymajmzgua3.klXwzI0NtEiDDjGmNYE3AT6U2Xe8ZXbd4.v
 veMPjFmyGBH4HSjVxYoi_X0COkXwDGucHOQT2n6KP5qKtYMMIcPaI11bgLTCosDRJhrzuQjrTOyj
 d0Tc6bY6_KgCqcUci.baGMSQXdlvBnrg82ftuk0Altdr7s5hfeTnn3Luc.IhoNjkDNZ6Rml26HUv
 atVrnZx_bLEDLIKTKTGF5WpKQATuPbGsa7TC5V33.21oE_l9admAoIiMWnoUfyFQHtFBP7vDyyIb
 YAKqcJNhQwBn1Bs_V8OLKVU89dhNZoBjNfoonf_F4uMyU9qBCq5aQgGhvo.amDnVpuBGA.HFtK6Z
 Kx_XMNdzH1eoPGtMOt.hCq4mLh.RTWvUiRKYx_C8Pa9wkXH8.3Ke.EmgZFw3696S1xbVjewnJHiR
 0zVuUxoh9pq_nppSCgp9hUtVLqJyAGXD..j_QO.2_v6qSKkhFzTVRHVfVdSCip_V.XON5QRxGiLm
 n1ssUXIQkSKoPzQ1DMPJI4njM2qDIDDuAB0w.v_bgatW9.hyp3_ibc1mPT3bbOE_p_sdRZxghPtd
 LhS_bl7DAX6xE4N5is1VmCphjaBQ1Eb8_ijwfoa8NGbPZ8cYb7UJL3z1qVvTdVkVd9RUIRYUufLw
 RIEznecBoYG813GOwfnCfa7UjIWVSlWW_goqYF1jPSuThCIpuFErSu6zpTP6jJIx5DZxUNw4x5F0
 DoMzJHrJOkA9zsRw2AM1exAuNggsVjLe4ueww.GQNvxvt7yE-
X-Sonic-MF: <deaner92@yahoo.com>
X-Sonic-ID: 63af6003-ef7e-44ad-9aba-94ad906a4aae
Received: from sonic.gate.mail.ne1.yahoo.com by sonic315.consmr.mail.bf2.yahoo.com with HTTP; Mon, 12 Oct 2026 22:39:54 +0000
Received: by hermes--production-bf1-6d6877594b-hmvct (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID d1b8cc93bac081ab1177366705bb57b9;
          Mon, 12 Oct 2026 22:29:33 +0000 (UTC)
From: Jeremy Dean Clifton <deaner92@yahoo.com>
To: Marc Dietrich <marvin24@gmx.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: ac100@lists.launchpad.net,
	linux-tegra@vger.kernel.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	outreachy@lists.linux.dev,
	Julia Lawall <julia.lawall@inria.fr>,
	Jeremy Dean Clifton <deaner92@yahoo.com>
Subject: [PATCH v2] staging: nvec: use guard(mutex) in nvec_write_sync()
Date: Mon, 12 Oct 2026 22:29:26 +0000
Message-ID: <20261012222926.7754-1-deaner92@yahoo.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
References: <20261012222926.7754-1-deaner92.ref@yahoo.com>

The three return paths of nvec_write_sync() each release
sync_write_mutex with explicit unlock calls.

Use guard(mutex) to unlock the lock automatically on any return
path.

This removes the three mutex_unlock() calls.

No functional change.

Signed-off-by: Jeremy Dean Clifton <deaner92@yahoo.com>
---
v2:
 - Reword the commit message to state the motivation and to make
   clear that removing the mutex_unlock() calls is the result of
   the change (Julia Lawall).
v1: https://lore.kernel.org/all/20261012171312.5998-1-deaner92@yahoo.com/

 drivers/staging/nvec/nvec.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
index 41cbdfdc1da6..716b1b482568 100644
--- a/drivers/staging/nvec/nvec.c
+++ b/drivers/staging/nvec/nvec.c
@@ -298,17 +298,15 @@ int nvec_write_sync(struct nvec_chip *nvec,
 		    const unsigned char *data, short size,
 		    struct nvec_msg **msg)
 {
-	mutex_lock(&nvec->sync_write_mutex);
+	guard(mutex)(&nvec->sync_write_mutex);
 
 	if (msg)
 		*msg = NULL;
 
 	nvec->sync_write_pending = (data[1] << 8) + data[0];
 
-	if (nvec_write_async(nvec, data, size) < 0) {
-		mutex_unlock(&nvec->sync_write_mutex);
+	if (nvec_write_async(nvec, data, size) < 0)
 		return -ENOMEM;
-	}
 
 	dev_dbg(nvec->dev, "nvec_sync_write: 0x%04x\n",
 		nvec->sync_write_pending);
@@ -316,7 +314,6 @@ int nvec_write_sync(struct nvec_chip *nvec,
 					  msecs_to_jiffies(2000)))) {
 		dev_warn(nvec->dev,
 			 "Timeout waiting for sync write to complete\n");
-		mutex_unlock(&nvec->sync_write_mutex);
 		return -ETIMEDOUT;
 	}
 
@@ -327,8 +324,6 @@ int nvec_write_sync(struct nvec_chip *nvec,
 	else
 		nvec_msg_free(nvec, nvec->last_sync_msg);
 
-	mutex_unlock(&nvec->sync_write_mutex);
-
 	return 0;
 }
 EXPORT_SYMBOL(nvec_write_sync);
-- 
2.43.0

