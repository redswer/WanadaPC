package com.wanada.model;

public class ProductDTO {
	CpuDTO CPU;
	MainBoardDTO MB;
	GpuDTO GPU;
	RamDTO RAM;
	CoolerDTO COOLER;
	SsdDTO SSD;
	HddDTO HDD;
	CaseDTO CASE;
	PowerDTO POWER;
	private String image;
    private String title;
    private String price;
	
	
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String string) {
		this.price = string;
	}
	public CpuDTO getCPU() {
		return CPU;
	}
	public void setCPU(CpuDTO cPU) {
		CPU = cPU;
	}
	public MainBoardDTO getMB() {
		return MB;
	}
	public void setMB(MainBoardDTO mB) {
		MB = mB;
	}
	public GpuDTO getGPU() {
		return GPU;
	}
	public void setGPU(GpuDTO gPU) {
		GPU = gPU;
	}
	public RamDTO getRAM() {
		return RAM;
	}
	public void setRAM(RamDTO rAM) {
		RAM = rAM;
	}
	public CoolerDTO getCOOLER() {
		return COOLER;
	}
	public void setCOOLER(CoolerDTO cOOLER) {
		COOLER = cOOLER;
	}
	public SsdDTO getSSD() {
		return SSD;
	}
	public void setSSD(SsdDTO sSD) {
		SSD = sSD;
	}
	public HddDTO getHDD() {
		return HDD;
	}
	public void setHDD(HddDTO hDD) {
		HDD = hDD;
	}
	public CaseDTO getCASE() {
		return CASE;
	}
	public void setCASE(CaseDTO cASE) {
		CASE = cASE;
	}
	public PowerDTO getPOWER() {
		return POWER;
	}
	public void setPOWER(PowerDTO pOWER) {
		POWER = pOWER;
	}
}
