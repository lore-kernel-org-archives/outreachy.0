Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7A3A2FB2
	for <outreachy@lists.linux.dev>; Sun, 29 Oct 2023 06:45:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="q/0CS3CJ"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=1N3uSokkfHyk2y7IBH4wk5WiptnNNLRBn6OIdfiL46E=;
  b=q/0CS3CJgG5MV8YrntkcA8a2VZzEWutKVSOhiAKWTOLIeaScNBWMbuEa
   jdww2RVDjH5LD0xHNdG4U7yzSL8wpG6+PZzmNBCMSpalso0r6TqxpNgMZ
   gqdHwhzg/kB3FysHMGObXBP4Jmh8x7+s3h8envK6JFhv+UQYcQ4tIHkKJ
   k=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,260,1694728800"; 
   d="scan'208";a="70036985"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Oct 2023 07:45:01 +0100
Date: Sun, 29 Oct 2023 07:45:00 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Jeremiah John <jeremiahjohn08706@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy@lists.linux.dev
Subject: Re: [PATCH] staging: octeon: change integer to kernel type
In-Reply-To: <ZT3pvl+oqXeHCwO4@DESKTOP-EVNFDUR.home>
Message-ID: <alpine.DEB.2.22.394.2310290738180.3136@hadrien>
References: <ZT3pvl+oqXeHCwO4@DESKTOP-EVNFDUR.home>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 29 Oct 2023, Jeremiah John wrote:

> As part of general code cleanup, I ran scripts/checkpatch.pl
> on octeon-stubs.h,which modified data types such as uint64_t
> to the kernel types u64,u8,etc.

The writing style of this log message is not correct.  Please reread the
Outreachy first patch tutorial, particularly
https://kernelnewbies.org/PatchPhilosophy

julia

>
> Signed-off-by: Jeremiah John <jeremiahjohn08706@gmail.com>
> ---
>  drivers/staging/octeon/octeon-stubs.h | 126 +++++++++++++-------------
>  1 file changed, 63 insertions(+), 63 deletions(-)
>
> diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
> index 579c755cfdc0..7e106feeacb4 100644
> --- a/drivers/staging/octeon/octeon-stubs.h
> +++ b/drivers/staging/octeon/octeon-stubs.h
> @@ -43,7 +43,7 @@
>  #define CVMX_POW_WQ_INT_PC		0
>
>  union cvmx_pip_wqe_word2 {
> -	uint64_t u64;
> +	u64 u64;
>  	struct {
>  		uint64_t bufs:8;
>  		uint64_t ip_offset:8;
> @@ -123,7 +123,7 @@ union cvmx_pip_wqe_word2 {
>  union cvmx_pip_wqe_word0 {
>  	struct {
>  		uint64_t next_ptr:40;
> -		uint8_t unused;
> +		u8 unused;
>  		__wsum hw_chksum;
>  	} cn38xx;
>  	struct {
> @@ -139,12 +139,12 @@ union cvmx_pip_wqe_word0 {
>  };
>
>  union cvmx_wqe_word0 {
> -	uint64_t u64;
> +	u64 u64;
>  	union cvmx_pip_wqe_word0 pip;
>  };
>
>  union cvmx_wqe_word1 {
> -	uint64_t u64;
> +	u64 u64;
>  	struct {
>  		uint64_t tag:32;
>  		uint64_t tag_type:2;
> @@ -174,7 +174,7 @@ union cvmx_wqe_word1 {
>
>  union cvmx_buf_ptr {
>  	void *ptr;
> -	uint64_t u64;
> +	u64 u64;
>  	struct {
>  		uint64_t i:1;
>  		uint64_t back:4;
> @@ -189,11 +189,11 @@ struct cvmx_wqe {
>  	union cvmx_wqe_word1 word1;
>  	union cvmx_pip_wqe_word2 word2;
>  	union cvmx_buf_ptr packet_ptr;
> -	uint8_t packet_data[96];
> +	u8 packet_data[96];
>  };
>
>  union cvmx_helper_link_info {
> -	uint64_t u64;
> +	u64 u64;
>  	struct {
>  		uint64_t reserved_20_63:44;
>  		uint64_t link_up:1;	    /**< Is the physical link up? */
> @@ -262,7 +262,7 @@ enum cvmx_pow_tag_type {
>  };
>
>  union cvmx_ipd_ctl_status {
> -	uint64_t u64;
> +	u64 u64;
>  	struct cvmx_ipd_ctl_status_s {
>  		uint64_t reserved_18_63:46;
>  		uint64_t use_sop:1;
> @@ -358,7 +358,7 @@ union cvmx_ipd_ctl_status {
>  };
>
>  union cvmx_ipd_sub_port_fcs {
> -	uint64_t u64;
> +	u64 u64;
>  	struct cvmx_ipd_sub_port_fcs_s {
>  		uint64_t port_bit:32;
>  		uint64_t reserved_32_35:4;
> @@ -376,7 +376,7 @@ union cvmx_ipd_sub_port_fcs {
>  };
>
>  union cvmx_ipd_sub_port_qos_cnt {
> -	uint64_t u64;
> +	u64 u64;
>  	struct cvmx_ipd_sub_port_qos_cnt_s {
>  		uint64_t cnt:32;
>  		uint64_t port_qos:9;
> @@ -385,38 +385,38 @@ union cvmx_ipd_sub_port_qos_cnt {
>  };
>
>  struct cvmx_pip_port_status {
> -	uint32_t dropped_octets;
> -	uint32_t dropped_packets;
> -	uint32_t pci_raw_packets;
> -	uint32_t octets;
> -	uint32_t packets;
> -	uint32_t multicast_packets;
> -	uint32_t broadcast_packets;
> -	uint32_t len_64_packets;
> -	uint32_t len_65_127_packets;
> -	uint32_t len_128_255_packets;
> -	uint32_t len_256_511_packets;
> -	uint32_t len_512_1023_packets;
> -	uint32_t len_1024_1518_packets;
> -	uint32_t len_1519_max_packets;
> -	uint32_t fcs_align_err_packets;
> -	uint32_t runt_packets;
> -	uint32_t runt_crc_packets;
> -	uint32_t oversize_packets;
> -	uint32_t oversize_crc_packets;
> -	uint32_t inb_packets;
> -	uint64_t inb_octets;
> -	uint16_t inb_errors;
> +	u32 dropped_octets;
> +	u32 dropped_packets;
> +	u32 pci_raw_packets;
> +	u32 octets;
> +	u32 packets;
> +	u32 multicast_packets;
> +	u32 broadcast_packets;
> +	u32 len_64_packets;
> +	u32 len_65_127_packets;
> +	u32 len_128_255_packets;
> +	u32 len_256_511_packets;
> +	u32 len_512_1023_packets;
> +	u32 len_1024_1518_packets;
> +	u32 len_1519_max_packets;
> +	u32 fcs_align_err_packets;
> +	u32 runt_packets;
> +	u32 runt_crc_packets;
> +	u32 oversize_packets;
> +	u32 oversize_crc_packets;
> +	u32 inb_packets;
> +	u64 inb_octets;
> +	u16 inb_errors;
>  };
>
>  struct cvmx_pko_port_status {
> -	uint32_t packets;
> -	uint64_t octets;
> -	uint64_t doorbell;
> +	u32 packets;
> +	u64 octets;
> +	u64 doorbell;
>  };
>
>  union cvmx_pip_frm_len_chkx {
> -	uint64_t u64;
> +	u64 u64;
>  	struct cvmx_pip_frm_len_chkx_s {
>  		uint64_t reserved_32_63:32;
>  		uint64_t maxlen:16;
> @@ -425,7 +425,7 @@ union cvmx_pip_frm_len_chkx {
>  };
>
>  union cvmx_gmxx_rxx_frm_ctl {
> -	uint64_t u64;
> +	u64 u64;
>  	struct cvmx_gmxx_rxx_frm_ctl_s {
>  		uint64_t pre_chk:1;
>  		uint64_t pre_strp:1;
> @@ -522,7 +522,7 @@ union cvmx_gmxx_rxx_frm_ctl {
>  };
>
>  union cvmx_gmxx_rxx_int_reg {
> -	uint64_t u64;
> +	u64 u64;
>  	struct cvmx_gmxx_rxx_int_reg_s {
>  		uint64_t minerr:1;
>  		uint64_t carext:1;
> @@ -711,7 +711,7 @@ union cvmx_gmxx_rxx_int_reg {
>  };
>
>  union cvmx_gmxx_prtx_cfg {
> -	uint64_t u64;
> +	u64 u64;
>  	struct cvmx_gmxx_prtx_cfg_s {
>  		uint64_t reserved_22_63:42;
>  		uint64_t pknd:6;
> @@ -748,7 +748,7 @@ union cvmx_gmxx_prtx_cfg {
>  };
>
>  union cvmx_gmxx_rxx_adr_ctl {
> -	uint64_t u64;
> +	u64 u64;
>  	struct cvmx_gmxx_rxx_adr_ctl_s {
>  		uint64_t reserved_4_63:60;
>  		uint64_t cam_mode:1;
> @@ -758,7 +758,7 @@ union cvmx_gmxx_rxx_adr_ctl {
>  };
>
>  union cvmx_pip_prt_tagx {
> -	uint64_t u64;
> +	u64 u64;
>  	struct cvmx_pip_prt_tagx_s {
>  		uint64_t reserved_54_63:10;
>  		uint64_t portadd_en:1;
> @@ -851,7 +851,7 @@ union cvmx_pip_prt_tagx {
>  };
>
>  union cvmx_spxx_int_reg {
> -	uint64_t u64;
> +	u64 u64;
>  	struct cvmx_spxx_int_reg_s {
>  		uint64_t reserved_32_63:32;
>  		uint64_t spf:1;
> @@ -871,7 +871,7 @@ union cvmx_spxx_int_reg {
>  };
>
>  union cvmx_spxx_int_msk {
> -	uint64_t u64;
> +	u64 u64;
>  	struct cvmx_spxx_int_msk_s {
>  		uint64_t reserved_12_63:52;
>  		uint64_t calerr:1;
> @@ -889,7 +889,7 @@ union cvmx_spxx_int_msk {
>  };
>
>  union cvmx_pow_wq_int {
> -	uint64_t u64;
> +	u64 u64;
>  	struct cvmx_pow_wq_int_s {
>  		uint64_t wq_int:16;
>  		uint64_t iq_dis:16;
> @@ -898,7 +898,7 @@ union cvmx_pow_wq_int {
>  };
>
>  union cvmx_sso_wq_int_thrx {
> -	uint64_t u64;
> +	u64 u64;
>  	struct {
>  		uint64_t iq_thr:12;
>  		uint64_t reserved_12_13:2;
> @@ -911,7 +911,7 @@ union cvmx_sso_wq_int_thrx {
>  };
>
>  union cvmx_stxx_int_reg {
> -	uint64_t u64;
> +	u64 u64;
>  	struct cvmx_stxx_int_reg_s {
>  		uint64_t reserved_9_63:55;
>  		uint64_t syncerr:1;
> @@ -927,7 +927,7 @@ union cvmx_stxx_int_reg {
>  };
>
>  union cvmx_stxx_int_msk {
> -	uint64_t u64;
> +	u64 u64;
>  	struct cvmx_stxx_int_msk_s {
>  		uint64_t reserved_8_63:56;
>  		uint64_t frmerr:1;
> @@ -942,7 +942,7 @@ union cvmx_stxx_int_msk {
>  };
>
>  union cvmx_pow_wq_int_pc {
> -	uint64_t u64;
> +	u64 u64;
>  	struct cvmx_pow_wq_int_pc_s {
>  		uint64_t reserved_0_7:8;
>  		uint64_t pc_thr:20;
> @@ -953,7 +953,7 @@ union cvmx_pow_wq_int_pc {
>  };
>
>  union cvmx_pow_wq_int_thrx {
> -	uint64_t u64;
> +	u64 u64;
>  	struct cvmx_pow_wq_int_thrx_s {
>  		uint64_t reserved_29_63:35;
>  		uint64_t tc_en:1;
> @@ -1002,7 +1002,7 @@ union cvmx_pow_wq_int_thrx {
>  };
>
>  union cvmx_npi_rsl_int_blocks {
> -	uint64_t u64;
> +	u64 u64;
>  	struct cvmx_npi_rsl_int_blocks_s {
>  		uint64_t reserved_32_63:32;
>  		uint64_t rint_31:1;
> @@ -1140,7 +1140,7 @@ union cvmx_npi_rsl_int_blocks {
>  };
>
>  union cvmx_pko_command_word0 {
> -	uint64_t u64;
> +	u64 u64;
>  	struct {
>  		uint64_t total_bytes:16;
>  		uint64_t segs:6;
> @@ -1162,7 +1162,7 @@ union cvmx_pko_command_word0 {
>  };
>
>  union cvmx_ciu_timx {
> -	uint64_t u64;
> +	u64 u64;
>  	struct cvmx_ciu_timx_s {
>  		uint64_t reserved_37_63:27;
>  		uint64_t one_shot:1;
> @@ -1171,7 +1171,7 @@ union cvmx_ciu_timx {
>  };
>
>  union cvmx_gmxx_rxx_rx_inbnd {
> -	uint64_t u64;
> +	u64 u64;
>  	struct cvmx_gmxx_rxx_rx_inbnd_s {
>  		uint64_t status:1;
>  		uint64_t speed:2;
> @@ -1199,7 +1199,7 @@ static inline uint64_t cvmx_scratch_read64(uint64_t address)
>  	return 0;
>  }
>
> -static inline void cvmx_scratch_write64(uint64_t address, uint64_t value)
> +static inline void cvmx_scratch_write64(u64 address, uint64_t value)
>  { }
>
>  static inline int cvmx_wqe_get_grp(struct cvmx_wqe *work)
> @@ -1235,7 +1235,7 @@ static inline uint64_t cvmx_read_csr(uint64_t csr_addr)
>  	return 0;
>  }
>
> -static inline void cvmx_write_csr(uint64_t csr_addr, uint64_t val)
> +static inline void cvmx_write_csr(u64 csr_addr, uint64_t val)
>  { }
>
>  static inline int cvmx_helper_setup_red(int pass_thresh, int drop_thresh)
> @@ -1257,11 +1257,11 @@ static inline int octeon_is_simulation(void)
>  	return 1;
>  }
>
> -static inline void cvmx_pip_get_port_status(uint64_t port_num, uint64_t clear,
> +static inline void cvmx_pip_get_port_status(u64 port_num, u64 clear,
>  					    struct cvmx_pip_port_status *status)
>  { }
>
> -static inline void cvmx_pko_get_port_status(uint64_t port_num, uint64_t clear,
> +static inline void cvmx_pko_get_port_status(u64 port_num, u64 clear,
>  					    struct cvmx_pko_port_status *status)
>  { }
>
> @@ -1362,12 +1362,12 @@ static inline struct cvmx_wqe *cvmx_pow_work_request_sync(enum cvmx_pow_wait wai
>  }
>
>  static inline int cvmx_spi_restart_interface(int interface,
> -					enum cvmx_spi_mode mode, int timeout)
> +					     enum cvmx_spi_mode mode, int timeout)
>  {
>  	return 0;
>  }
>
> -static inline void cvmx_fau_async_fetch_and_add32(uint64_t scraddr,
> +static inline void cvmx_fau_async_fetch_and_add32(u64 scraddr,
>  						  enum cvmx_fau_reg_32 reg,
>  						  int32_t value)
>  { }
> @@ -1380,12 +1380,12 @@ static inline union cvmx_gmxx_rxx_rx_inbnd cvmx_spi4000_check_speed(int interfac
>  	return r;
>  }
>
> -static inline void cvmx_pko_send_packet_prepare(uint64_t port, uint64_t queue,
> +static inline void cvmx_pko_send_packet_prepare(u64 port, uint64_t queue,
>  						enum cvmx_pko_lock use_locking)
>  { }
>
> -static inline enum cvmx_pko_status cvmx_pko_send_packet_finish(uint64_t port,
> -		uint64_t queue, union cvmx_pko_command_word0 pko_command,
> +static inline enum cvmx_pko_status cvmx_pko_send_packet_finish(u64 port,
> +							       u64 queue, union cvmx_pko_command_word0 pko_command,
>  		union cvmx_buf_ptr packet, enum cvmx_pko_lock use_locking)
>  {
>  	return 0;
> @@ -1407,7 +1407,7 @@ static inline void cvmx_wqe_set_grp(struct cvmx_wqe *work, int grp)
>
>  static inline void cvmx_pow_work_submit(struct cvmx_wqe *wqp, uint32_t tag,
>  					enum cvmx_pow_tag_type tag_type,
> -					uint64_t qos, uint64_t grp)
> +					u64 qos, uint64_t grp)
>  { }
>
>  #define CVMX_ASXX_RX_CLK_SETX(a, b)	((a) + (b))
> --
> 2.41.0
>
>
>
