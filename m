Received: from mail-177132.yeah.net (mail-177132.yeah.net [123.58.177.132])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94BA3156E9
	for <outreachy@lists.linux.dev>; Tue, 16 May 2023 07:29:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=mTNDN550SBe+Qmpqj+ZWvWkotJk0mYyhGGjg0XR+pnU=;
	b=Bc0/WzAqwic59gTCEI6dhYTKWdSBU1j0FTkrAmZtIVaJaymYPQe4TMm/qfYJmm
	Ubkdohn/JHcSStbDDRw5D9rqtyh0CgUSRLF6PpcKleHMkSu69RADmU7HiayFv9KL
	9UzQ49w6jJ/m0BRizpHBux5uH7RruvE8PUyUUcjqu7NUk=
Received: from john-VirtualBox (unknown [111.18.136.15])
	by smtp2 (Coremail) with SMTP id C1UQrACXnV19LWNk_3Y6CA--.18933S2;
	Tue, 16 May 2023 15:15:09 +0800 (CST)
Date: Tue, 16 May 2023 15:15:09 +0800
From: Baozhu Ni <nibaozhu@yeah.net>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
	Tony Nguyen <anthony.l.nguyen@intel.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	"moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
	"open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
	open list <linux-kernel@vger.kernel.org>,
	Outreachy <outreachy@lists.linux.dev>
Subject: [PATCH] e1000e: Add desc after trailing whitespace
Message-ID: <20230516071509.GA3550@john-VirtualBox>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-CM-TRANSID:C1UQrACXnV19LWNk_3Y6CA--.18933S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrKryfCry3CF1rWr1UJr13Arb_yoW3XrbE9r
	1Ivwn3GrZ8GFyFyF45CrWxZ34Ykw1DXrykAF93K3s5ZrWUJr48uryv9r1xJFs2gw1fJFyU
	AryaqF1fC3y2kjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IUeructUUUUU==
X-Originating-IP: [111.18.136.15]
X-CM-SenderInfo: 5qlet0x2kxq5hhdkh0dhw/1tbiDh1xelszXaj9PAAAsE

./scripts/checkpatch.pl check error, so add description.

Signed-off-by: Baozhu Ni <nibaozhu@yeah.net>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 6f5c16aebcbf..cadeb5bc5e16 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -4198,7 +4198,7 @@ void e1000e_reset(struct e1000_adapter *adapter)
 
 /**
  * e1000e_trigger_lsc - trigger an LSC interrupt
- * @adapter: 
+ * @adapter: board private structure
  *
  * Fire a link status change interrupt to start the watchdog.
  **/
-- 
2.25.1

