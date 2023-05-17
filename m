Received: from mail-177132.yeah.net (mail-177132.yeah.net [123.58.177.132])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EF3317C8
	for <outreachy@lists.linux.dev>; Wed, 17 May 2023 01:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=FMRYP780oGsC/V150FLH6SQ7V5SyK3kirmT0MA+o3jQ=;
	b=nyWd2aKVJRk1LmAs2nu7eLkLXg4knrgjmR1HWQ/2YkWMjk7fgm9Iee+4tMiZNe
	k0a7oAb0iCtEfIgmeWGpgMrs2KCvS/43HGuSetgP0v0LVj/Uht/IXS+cHid2GQ5i
	IgHL7+pyuQrPliYzw5kuNgOCudnxPlA/9xB4KUS6/BJOo=
Received: from john-VirtualBox (unknown [111.18.136.15])
	by smtp2 (Coremail) with SMTP id C1UQrACHj19+LWRkaM5rCA--.15260S2;
	Wed, 17 May 2023 09:27:28 +0800 (CST)
Date: Wed, 17 May 2023 09:27:26 +0800
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
Subject: [PATCH v2 net-next] e1000e: Add @adapter description to kdoc
Message-ID: <20230517012726.GA1785@john-VirtualBox>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-CM-TRANSID:C1UQrACHj19+LWRkaM5rCA--.15260S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7JF18GFW8KFWDJFW7JF4xZwb_yoWfWwbE9r
	4Iv3Z7KrZ8GF1Fkr45ArWxZ342kw1qqryvkFyfK3savryDZr4rWryv9r17GFsI9w4fJa4D
	AryaqF1fC3y29jkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IUnk-BtUUUUU==
X-Originating-IP: [111.18.136.15]
X-CM-SenderInfo: 5qlet0x2kxq5hhdkh0dhw/1tbiBQByelsVBYuNKgAAsq

Provide a description for the kernel doc of the @adapter
of e1000e_trigger_lsc()

Signed-off-by: Baozhu Ni <nibaozhu@yeah.net>
---
v2:
  - let the subject and description clearer
v1: https://lore.kernel.org/lkml/ZGNl8yHEko7LpCBr@corigine.com/

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

