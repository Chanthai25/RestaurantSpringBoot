package com.project.Restaurant.Service;

import com.project.Restaurant.Model.Staff;
import com.project.Restaurant.Repository.StaffRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class StaffService {

    @Autowired
    private StaffRepository staffRepository;

    public List<Staff> getAllStaff() {
        return staffRepository.findAll();
    }

    public Optional<Staff> getStaffById(Long id) {
        return staffRepository.findById(id);
    }

    public Staff createStaff(Staff staff) {
        return staffRepository.save(staff);
    }

    public Optional<Staff> updateStaff(Long id, Staff staffDetails) {
        Optional<Staff> optionalStaff = staffRepository.findById(id);
        if (optionalStaff.isPresent()) {
            Staff existingStaff = optionalStaff.get();
            existingStaff.setName(staffDetails.getName());
            existingStaff.setPosition(staffDetails.getPosition());

            existingStaff.setEmail(staffDetails.getEmail());

            return Optional.of(staffRepository.save(existingStaff));
        }
        return Optional.empty();
    }

    public boolean deleteStaff(Long id) {
        if (staffRepository.existsById(id)) {
            staffRepository.deleteById(id);
            return true;
        }
        return false;
    }
}
